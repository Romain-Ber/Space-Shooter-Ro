local Game = {}

local myEntities = require("entities")
require("background")

function Game.Load()
    ennemies = {}
    neutrals = {}
    bonuses = {}
    bosses = {}
    currentLevel = 1
    myEntities.Load()
end

function Game.Update(dt)
    myEntities.CreateEntity(dt)
    myEntities.Update(dt)
end

function Game.Draw()
    myEntities.Draw()
end
return Game