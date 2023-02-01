local Game = {}

local myEntities = require("entities")
require("background")

function Game.Load()
    ennemies = {}
    neutrals = {}
    bonuses = {}
    ennemyTexturePack = love.graphics.newImage("images/ennemy.png")
    bossTexturePack = love.graphics.newImage("images/boss.png")
  --  neutralTexturePack = love.graphics.newImage("images/neutral.png")
 --   bonusTexturePack = love.graphics.newImage("images/bonus.png")
    myEntities.Load(1)
end

function Game.Update(dt)



end

function Game.Draw()
    local ennemiesNumber = #ennemies
    for i = 1, ennemiesNumber do
        local currentEnnemy = ennemies[i]
        local ennemyQuad = love.graphics.newQuad(0, ennemy.Type - 1, 8, 8)
        love.graphics.draw(ennemyTexturePack, ennemyQuad, currentEnnemy.CoordX, currentEnnemy.CoordY)
    end

end
return Game