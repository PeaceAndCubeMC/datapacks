execute if entity @s[scores={ete2022_quete=5}] run scoreboard players set @s ete2022_quete 6

execute if entity @s[scores={ete2022_quete=6}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"]","color":"dark_green"},{"text":" ","color":"blue"},{"selector":"@s","color":"blue"},{"text":" :","color":"blue"},{"text":" Le repère des pirates ! Je vais continuer à ne pas faire de bruit. Voyons ce que je peux trouver comme informations ici..."}]

execute if entity @s[scores={ete2022_quete=6}] run tellraw @s  ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"]","color":"dark_green"},{"text":" ","color":"blue"},{"text":"Objectif Principal :","italic":true,"underlined":true,"color":"light_purple"},{"text":" Trouver des informations sur les pirates et leur chef.","italic":true,"color":"aqua"}]