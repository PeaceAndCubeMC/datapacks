execute if entity @s[tag=fe23_quete_hamburger] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Allez, c'est parti pour le grenier...","italic":true}]
execute if entity @s[tag=fe23_quete_hamburger] run tp @s -1884 124 -413 -80 0
execute if entity @s[tag=fe23_quete_hamburger] run return 0

execute if entity @s[tag=fe23_quete_beignet_oignon] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bon, allons au premier étage...","italic":true}]
execute if entity @s[tag=fe23_quete_beignet_oignon] run tp @s -1887 119 -407 -120 0
execute if entity @s[tag=fe23_quete_beignet_oignon] run return 0

execute unless entity @s[tag=fe23_quete_maki] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Il vaut mieux éviter de rentrer dans cette maison...","italic":true}]
execute unless entity @s[tag=fe23_quete_maki] run return 0

execute if entity @s[tag=fe23_quete_maki] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bon, rentrons dans la maison...","italic":true}]
execute if entity @s[tag=fe23_quete_maki] run tp @s -1879.0 114 -405.0 140 0