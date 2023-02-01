local Game = {}

local myEntities = require("entities")
require("background")

function Game.Load()
    ennemies = {}
    neutrals = {}
    bonuses = {}
    bosses = {}
    ennemyTexturePack = love.graphics.newImage("images/ennemy.png")
    bossTexturePack = love.graphics.newImage("images/boss.png")
  --  neutralTexturePack = love.graphics.newImage("images/neutral.png")
 --   bonusTexturePack = love.graphics.newImage("images/bonus.png")
    myEntities.Load(4)
end

function Game.Update(dt)



end

function Game.Draw()
    local ennemiesNumber = #ennemies
    for i = 1, ennemiesNumber do
        local currentEnnemy = ennemies[i]
        local ennemyQuad = love.graphics.newQuad(0, (currentEnnemy.Type - 1)*8, 8, 8, 8, 216)
        love.graphics.draw(ennemyTexturePack, ennemyQuad, currentEnnemy.CoordX, currentEnnemy.CoordY, 0, 1, 1)
    end
    local bossesNumber = #bosses
    for i = 1, bossesNumber do
        local currentBoss = bosses[i]
        local bossQuad = love.graphics.newQuad(0, (currentBoss.Type - 1)*16, 16, 16, 16, 96)
        love.graphics.draw(bossTexturePack, bossQuad, currentBoss.CoordX, currentBoss.CoordY, 0, 1.5, 1.5)
    end
end
return Game