local myGame = require("game")
setfullscreen = true

function love.load()
    screenX = love.graphics.getWidth()
    screenY = love.graphics.getHeight()
    myGame.Load()
    if(setfullscreen) then
        love.window.setFullscreen(true)        love.window.setFullscreen(true)
        screenWidth, screenHeight = love.window.getMode()
        scale_x = screenWidth / 800
        scale_y = screenHeight / 600
    else
    end 
end

function love.update(dt)
    myGame.Update(dt)
end

function love.draw()
         --full screen
         if (setfullscreen) then love.graphics.scale(scale_x,scale_y) end
    myGame.Draw()
end

function love.keypressed(key)
    print(key)
end