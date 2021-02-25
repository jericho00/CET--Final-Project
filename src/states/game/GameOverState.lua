
GameOverState = Class{__includes = BaseState}

function GameOverState:enter(params)

    self.Goldmedal = love.graphics.newImage('graphics/GoldMedal.png')
    self.Silvermedal = love.graphics.newImage('graphics/SilverMedal.png')
    self.Bronzemedal = love.graphics.newImage('graphics/BronzeMedal.png')
end

function GameOverState:update(dt)
    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        gStateMachine:change('play')
    end
    if love.keyboard.wasPressed('escape') then
        gStateMachine:change('start')
    end
end

function GameOverState:render()
    love.graphics.draw(gTextures['game_over_background'], 0, 0, 0, 
        VIRTUAL_WIDTH / gTextures['game_over_background']:getWidth(),
        VIRTUAL_HEIGHT / gTextures['game_over_background']:getHeight())

    love.graphics.setFont(gFonts['zelda'])
    love.graphics.setColor(175, 53, 42, 255)
    love.graphics.printf('GAME OVER', 0, VIRTUAL_HEIGHT / 2 - 100, VIRTUAL_WIDTH, 'center')
    
    love.graphics.setFont(gFonts['zelda-small'])
    love.graphics.printf('Press Enter to Retry', 0, VIRTUAL_HEIGHT / 2 + 46, VIRTUAL_WIDTH, 'center')
    love.graphics.setColor(255, 255, 255, 255)

    love.graphics.setFont(gFonts['zelda-small'])
    love.graphics.printf('Press Esc to return to main menu', 0, VIRTUAL_HEIGHT / 2 + 76, VIRTUAL_WIDTH, 'center')
    love.graphics.setColor(255, 255, 255, 255)

    local Medal = nil
    local TypeMedal = nil
    if score <1001 then
        Medal = self.Bronzemedal
        TypeMedal = 'Bronze'
    elseif score > 1001 and score < 2001 then
        Medal = self.Silvermedal
        TypeMedal = 'Silver'
    elseif score > 2001 then
        Medal = self.Goldmedal
        TypeMedal = 'Gold'
    end
    if Medal ~= nil then
        love.graphics.printf('Well done! You earned a '  ..TypeMedal..  ' medal', 0, 70, VIRTUAL_WIDTH, 'center')
        love.graphics.draw(Medal, VIRTUAL_WIDTH / 2 - Medal:getWidth() / 2, 120)
    end
end