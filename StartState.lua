
StartState = Class{__includes = BaseState}

function StartState:init()

end

function StartState:enter(params)

end

function StartState:update(dt)
    if love.keyboard.wasPressed('escape') then
        love.event.quit()
    end
    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        gStateMachine:change('play')
    end
    if love.keyboard.wasPressed('h') then
        gStateMachine:change('HowToPlay')
    end
    
end

function StartState:render()
    love.graphics.draw(gTextures['background'], 0, 0, 0, 
        VIRTUAL_WIDTH / gTextures['background']:getWidth(),
        VIRTUAL_HEIGHT / gTextures['background']:getHeight())

    love.graphics.setFont(gFonts['zelda'])
    love.graphics.setColor(34, 34, 34, 255)
    love.graphics.printf('Pogi the Hero', 2, VIRTUAL_HEIGHT / 2 - 60, VIRTUAL_WIDTH, 'center')

    love.graphics.setColor(175, 53, 42, 255)
    love.graphics.printf('Pogi the Hero', 0, VIRTUAL_HEIGHT / 2 - 62, VIRTUAL_WIDTH, 'center')

    love.graphics.setColor(255, 255, 255, 255)
    love.graphics.setFont(gFonts['zelda-small'])
    love.graphics.printf('Press Enter to Play', 0, VIRTUAL_HEIGHT / 2 + 4, VIRTUAL_WIDTH, 'center')
    
    love.graphics.setColor(255, 255, 255, 255)
    love.graphics.setFont(gFonts['zelda-small'])
    love.graphics.printf('Press Esc to Exit', 0, VIRTUAL_HEIGHT / 2 + 64, VIRTUAL_WIDTH, 'center')

    love.graphics.setColor(255, 255, 255, 255)
    love.graphics.setFont(gFonts['zelda-small'])
    love.graphics.printf('Press H for How to Play', 0, VIRTUAL_HEIGHT / 2 + 34, VIRTUAL_WIDTH, 'center')
end