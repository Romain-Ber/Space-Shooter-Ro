---VARIABLES---
ennemyType = 27 --nombre de types d'ennemis et de textures
neutralType = 5 --nombre de types d'ennemis et de textures
bonusType = 5 --nombre de types d'ennemis et de textures

---
function entities.Load()

end

function entities.Update(entityType)
    if entityType = 1 then -- si une entite est generee, executer ce code
        local ennemy = {}
        local ennemyPixelGap = 8 --taille du saut en pixels entre les textures de differentes identites--
        ennemy.Width = 8 --largeur d'une entite en fonction de ennemyType--
        ennemy.Height = 8 --hauteur d'une entite en fonction de ennemyType--
        ennemy.CoordX = math.random((screenNoPlayLeft + 1), ((screenX - screenNoPlayRight) - ennemy.Width))
        ennemy.CoordY = 1
        ennemy.Type = math.random(0, ennemyType)
        local lastEnnemyIndex = #ennemies
        ennemies[lastEnnemyIndex + 1] = ennemy
        return ennemies
    elseif entityType = 2 then
        local neutral = {}
        local neutralPixelGap = 8 --taille du saut en pixels entre les textures de differentes identites--
        neutral.Width = 8 --largeur d'une entite en fonction de neutralType--
        neutral.Height = 8 --hauteur d'une entite en fonction de neutralType--
        neutral.CoordX = math.random((screenNoPlayLeft + 1), ((screenX - screenNoPlayRight) - neutral.Width))
        neutral.CoordY = 1
        neutral.Type = math.random(0, neutralType)
        local lastNeutralIndex = #neutrals
        neutrals[lastNeutralIndex + 1] = neutral
        return neutrals
    elseif entityType = 3 then
        local bonus = {}
        local bonusPixelGap = 8 --taille du saut en pixels entre les textures de differentes identites--
        bonus.Width = 8 --largeur d'une entite en fonction de bonusType--
        bonus.Height = 8 --hauteur d'une entite en fonction de bonusType--
        bonus.CoordX = math.random((screenNoPlayLeft + 1), ((screenX - screenNoPlayRight) - bonus.Width))
        bonus.CoordY = 1
        bonus.Type = math.random(0, bonusType)
        local lastBonusIndex = #bonuses
        bonuses[lastBonusIndex + 1] = bonus
        return bonuses
    else
    end
end