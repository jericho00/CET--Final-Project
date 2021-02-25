
PlayerIdleState = Class{__includes = EntityIdleState}

function PlayerIdleState:enter(params)
    self.entity.offsetY = 5
    self.entity.offsetX = 0
end

function PlayerIdleState:update(dt)
    EntityIdleState.update(self, dt)
end

function PlayerIdleState:update(dt)
    if love.keyboard.isDown('a') or love.keyboard.isDown('d') or
       love.keyboard.isDown('w') or love.keyboard.isDown('s') then
        self.entity:changeState('walk')
    end

    if love.keyboard.wasPressed('space') then
        self.entity:changeState('swing-sword')
    end

end