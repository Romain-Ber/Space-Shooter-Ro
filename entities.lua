---VARIABLES---
ennemyType = 27 --nombre de types d'ennemis et de textures
bossType = 6
neutralType = 5 --nombre de types d'ennemis et de textures
bonusType = 5 --nombre de types d'ennemis et de textures

---

local Entities = {}

function Entities.Load(entityType)
    if entityType == 1 then -- si une entite est generee, executer ce code
        local ennemy = {}
        local ennemyPixelGap = 8 --taille du saut en pixels entre les textures de differentes identites--
        ennemy.Width = 8 --largeur d'une entite en fonction de ennemyType--
        ennemy.Height = 8 --hauteur d'une entite en fonction de ennemyType--
        ennemy.CoordX = math.random((screenNoPlayLeft + 1), ((screenX - screenNoPlayRight) - ennemy.Width))
        ennemy.CoordY = 1
        ennemy.Type = math.random(1, ennemyType)
        local lastEnnemyIndex = #ennemies
        ennemies[lastEnnemyIndex + 1] = ennemy
    elseif entityType == 2 then
        local neutral = {}
        local neutralPixelGap = 8 --taille du saut en pixels entre les textures de differentes identites--
        neutral.Width = 8 --largeur d'une entite en fonction de neutralType--
        neutral.Height = 8 --hauteur d'une entite en fonction de neutralType--
        neutral.CoordX = math.random((screenNoPlayLeft + 1), ((screenX - screenNoPlayRight) - neutral.Width))
        neutral.CoordY = 1
        neutral.Type = math.random(0, neutralType)
        local lastNeutralIndex = #neutrals
        neutrals[lastNeutralIndex + 1] = neutral
    elseif entityType == 3 then
        local bonus = {}
        local bonusPixelGap = 8 --taille du saut en pixels entre les textures de differentes identites--
        bonus.Width = 8 --largeur d'une entite en fonction de bonusType--
        bonus.Height = 8 --hauteur d'une entite en fonction de bonusType--
        bonus.CoordX = math.random((screenNoPlayLeft + 1), ((screenX - screenNoPlayRight) - bonus.Width))
        bonus.CoordY = 1
        bonus.Type = math.random(0, bonusType)
        local lastBonusIndex = #bonuses
        bonuses[lastBonusIndex + 1] = bonus
    elseif entityType == 4 then
        local boss = {}
        local neutralPixelGap = 16 --taille du saut en pixels entre les textures de differentes identites--
        boss.Width = 16 --largeur d'une entite en fonction de bossType--
        boss.Height = 16 --hauteur d'une entite en fonction de bossType--
        boss.CoordX = math.random((screenNoPlayLeft + 1), ((screenX - screenNoPlayRight) - boss.Width))
        boss.CoordY = 1
        boss.Type = math.random(1, bossType)
        local lastBossIndex = #bosses
        bosses[lastBossIndex + 1] = boss
    else
    end
end
return Entities