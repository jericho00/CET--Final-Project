
Doorway = Class{}

function Doorway:init(direction, open, room)
    self.direction = direction
    self.open = open
    self.room = room

    if direction == 'left' then
        self.x = MAP_RENDER_OFFSET_X
        self.y = MAP_RENDER_OFFSET_Y + (MAP_HEIGHT / 2) * TILE_SIZE - TILE_SIZE
        self.height = 32
        self.width = 16
    elseif direction == 'right' then
        self.x = MAP_RENDER_OFFSET_X + (MAP_WIDTH * TILE_SIZE) - TILE_SIZE
        self.y = MAP_RENDER_OFFSET_Y + (MAP_HEIGHT / 2 * TILE_SIZE) - TILE_SIZE
        self.height = 32
        self.width = 16
    elseif direction == 'top' then
        self.x = MAP_RENDER_OFFSET_X + (MAP_WIDTH / 2 * TILE_SIZE) - TILE_SIZE
        self.y = MAP_RENDER_OFFSET_Y
        self.height = 16
        self.width = 32
    else
        self.x = MAP_RENDER_OFFSET_X + (MAP_WIDTH / 2 * TILE_SIZE) - TILE_SIZE
        self.y = MAP_RENDER_OFFSET_Y + (MAP_HEIGHT * TILE_SIZE) - TILE_SIZE
        self.height = 16
        self.width = 32
    end
end

function Doorway:render(offsetX, offsetY)
    local texture = gTextures['tiles']
    local quads = gFrames['tiles']

    self.x = self.x + offsetX
    self.y = self.y + offsetY

    if self.direction == 'left' then
        if self.open then
            love.graphics.draw(texture, quads[170], self.x, self.y)
            love.graphics.draw(texture, quads[190], self.x, self.y + TILE_SIZE)
        else
            love.graphics.draw(texture, quads[130], self.x, self.y)
            love.graphics.draw(texture, quads[150], self.x, self.y + TILE_SIZE)
        end
    elseif self.direction == 'right' then
        if self.open then
            love.graphics.draw(texture, quads[168], self.x, self.y)
            love.graphics.draw(texture, quads[188], self.x, self.y + TILE_SIZE)
        else
            love.graphics.draw(texture, quads[128], self.x, self.y)
            love.graphics.draw(texture, quads[148], self.x, self.y + TILE_SIZE)
        end
    elseif self.direction == 'top' then
        if self.open then
            love.graphics.draw(texture, quads[114], self.x, self.y)
            love.graphics.draw(texture, quads[115], self.x + TILE_SIZE, self.y)
        else
            love.graphics.draw(texture, quads[112], self.x, self.y)
            love.graphics.draw(texture, quads[113], self.x + TILE_SIZE, self.y)
        end
    else
        if self.open then
            love.graphics.draw(texture, quads[110], self.x, self.y)
            love.graphics.draw(texture, quads[111], self.x + TILE_SIZE, self.y)
        else
            love.graphics.draw(texture, quads[108], self.x, self.y)
            love.graphics.draw(texture, quads[109], self.x + TILE_SIZE, self.y)
        end
    end

    self.x = self.x - offsetX
    self.y = self.y - offsetY
end