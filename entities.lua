entity = {}
entity.Width = 1 --- (retrouver la largeur d'une entite dans le texture pack)
entity.Height = 1 --- (retrouver la hauteur d'une entite dans le texture pack)
entity.CoordX = math.random(entity.Width / 2, (screenX - entity.Width / 2))
entity.CoordY = entity.Height / 2
entity.Coord = {entity.CoordX, entity.CoordY}