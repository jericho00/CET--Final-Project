
PlayerSwingSwordState = Class{__includes = BaseState}

function PlayerSwingSwordState:init(player, dungeon)
    self.player = player
    self.dungeon = dungeon

    self.player.offsetY = 5
    self.player.offsetX = 0

    local direction = self.player.direction
    
    local hitboxX, hitboxY, hitboxWidth, hitboxHeight

    if direction == 'left' then
        self.player.offsetX = 64
        hitboxWidth = 64
        hitboxHeight = 6
        hitboxX = self.player.x - hitboxWidth
        hitboxY = self.player.y - 1
    elseif direction == 'right' then
        hitboxWidth = 66
        hitboxHeight = 6
        hitboxX = self.player.x + self.player.width - 3
        hitboxY = self.player.y - 1
        
    elseif direction == 'up' then
        self.player.offsetY = 69
        hitboxWidth = 6
        hitboxHeight = 64
        hitboxX = self.player.x + 5
        hitboxY = self.player.y - hitboxHeight
    else
        hitboxWidth = 6
        hitboxHeight = 67
        hitboxX = self.player.x + 5
        hitboxY = self.player.y + self.player.height - 15
    end

    self.swordHitbox = Hitbox(hitboxX, hitboxY, hitboxWidth, hitboxHeight)
    self.player:changeAnimation('sword-' .. self.player.direction)
end

function PlayerSwingSwordState:enter(params)
    gSounds['sword']:stop()
    gSounds['sword']:play()

    self.player.currentAnimation:refresh()
end

function PlayerSwingSwordState:update(dt)
    for k, entity in pairs(self.dungeon.currentRoom.entities) do
        if entity:collides(self.swordHitbox) and not entity.dead then
            entity:damage(1)
            gSounds['hit-enemy']:play()
            self.player.score = self.player.score + 100
            score = self.player.score
            
            if entity.dead and math.random(HEART_SPAWN_CHANCE) == 1 then
                SpawnHeart(entity, self.dungeon.currentRoom.objects)
            end
        end
    end

    if self.player.currentAnimation.timesPlayed > 0 then
        self.player.currentAnimation.timesPlayed = 0
        self.player:changeState('idle')
    end

    if love.keyboard.wasPressed('space') then
        self.player:changeState('swing-sword')
    end
end

function PlayerSwingSwordState:render()
    local anim = self.player.currentAnimation
    love.graphics.draw(gTextures[anim.texture], gFrames[anim.texture][anim:getCurrentFrame()],
        math.floor(self.player.x - self.player.offsetX), math.floor(self.player.y - self.player.offsetY))

    -- debug for player and hurtbox collision rects
    --love.graphics.setColor(255, 0, 255, 255)
    --love.graphics.rectangle('line', self.player.x, self.player.y, self.player.width, self.player.height)
    --love.graphics.rectangle('line', self.swordHitbox.x, self.swordHitbox.y, self.swordHitbox.width, self.swordHitbox.height)
    --love.graphics.setColor(255, 255, 255, 255)
end