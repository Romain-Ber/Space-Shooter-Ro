local Game = {}

local Map_Width = 10
local Map_Height = 10
local Tile_Width = 70
local Tile_Height = 70

Game.Map = {}

Game.TileTextures = {}


function Game.Load()

end

function Game.Update(dt)
    --condition pour savoir si on cree une entite ou pas--
    createEntity = math.random(0,1)
    entities.CreateEntity(createEntity)
    


end

function Game.Draw()

return Game
