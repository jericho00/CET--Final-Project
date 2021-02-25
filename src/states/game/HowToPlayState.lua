HowToPlayState = Class{__includes = BaseState}

function HowToPlayState:render()
    love.graphics.draw(gTextures['HowToPlay'], 0, 0, 0, 
        VIRTUAL_WIDTH / gTextures['HowToPlay']:getWidth(),
        VIRTUAL_HEIGHT / gTextures['HowToPlay']:getHeight())

        love.graphics.setFont(gFonts['medium'])
    love.graphics.setColor(0, 0, 0, 1)
    love.graphics.printf('W - move up', 0, VIRTUAL_HEIGHT / 2 - 100, VIRTUAL_WIDTH, 'center')
    love.graphics.setFont(gFonts['medium'])
    love.graphics.setColor(175, 53, 42, 255)
    love.graphics.printf('W - move up', 0, VIRTUAL_HEIGHT / 2 - 102, VIRTUAL_WIDTH, 'center')
    love.graphics.setFont(gFonts['medium'])

    love.graphics.setColor(0, 0, 0, 1)
    love.graphics.printf('A - move left', 0, VIRTUAL_HEIGHT / 2 - 80, VIRTUAL_WIDTH, 'center')
    love.graphics.setFont(gFonts['medium'])
    love.graphics.setColor(175, 53, 42, 255)
    love.graphics.printf('A - move left', 0, VIRTUAL_HEIGHT / 2 - 82, VIRTUAL_WIDTH, 'center')
    love.graphics.setFont(gFonts['medium'])

    love.graphics.setColor(0, 0, 0, 1)
    love.graphics.printf('S - move down', 0, VIRTUAL_HEIGHT / 2 - 60, VIRTUAL_WIDTH, 'center')
    love.graphics.setFont(gFonts['medium'])
    love.graphics.setColor(175, 53, 42, 255)
    love.graphics.printf('S - move down', 0, VIRTUAL_HEIGHT / 2 - 62, VIRTUAL_WIDTH, 'center')
    love.graphics.setFont(gFonts['medium'])

    love.graphics.setColor(0, 0, 0, 1)
    love.graphics.printf('D - move right', 0, VIRTUAL_HEIGHT / 2 - 40, VIRTUAL_WIDTH, 'center')
    love.graphics.setColor(175, 53, 42, 255)
    love.graphics.printf('D - move right', 0, VIRTUAL_HEIGHT / 2 - 42, VIRTUAL_WIDTH, 'center')

    love.graphics.setColor(0, 0, 0, 1)
    love.graphics.setFont(gFonts['medium'])
    love.graphics.printf('Spacebar - Shoot Laser', 0, VIRTUAL_HEIGHT / 2 + 46, VIRTUAL_WIDTH, 'center')
    love.graphics.setColor(255, 255, 255, 255)
    love.graphics.setFont(gFonts['medium'])
    love.graphics.printf('Spacebar - Shoot Laser', 0, VIRTUAL_HEIGHT / 2 + 44, VIRTUAL_WIDTH, 'center')
    

    love.graphics.setColor(0, 0, 0, 1)
    love.graphics.setFont(gFonts['medium'])
    love.graphics.printf('Press Esc to return to menu', 0, VIRTUAL_HEIGHT / 2 + 66, VIRTUAL_WIDTH, 'center')
    love.graphics.setColor(255, 255, 255, 255)
    love.graphics.setFont(gFonts['medium'])
    love.graphics.printf('Press Esc to return to menu', 0, VIRTUAL_HEIGHT / 2 + 64, VIRTUAL_WIDTH, 'center')
    

end

function HowToPlayState:update(dt)
    if love.keyboard.wasPressed('escape') then
        gStateMachine:change('start')
    end
end