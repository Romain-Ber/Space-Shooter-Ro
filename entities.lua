function CreateEntity(arg1)
    if arg1 = 1 then
        local entity = {}
        --choix du type d'entity généré--
        local entityType = math.random(1,10) --type 1 à 10?--
        local entityTypeGap = 50 --taille du saut en pixels entre les textures de differentes identites--
        entity.Width =  --largeur d'une entite en fonction de entityType--
        entity.Height =  --hauteur d'une entite en fonction de entityType--
        local entityCoordX = math.random((entity.Width / 2 + screenNoPlayLeft), ((screenX - screenNoPlayRight) - entity.Width / 2))
        local entityCoordY = entity.Height / 2
        entity.Coord = {entityCoordX, entityCoordY}

        --insertion de l'entite dans la collection d'identites vivantes--
        local lastEntitiesIndex = #entities
        entities[lastEntitiesIndex + 1] = entity
        return entities
    else
        return entities
    
end