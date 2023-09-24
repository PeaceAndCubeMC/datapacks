execute if entity @s[tag=fe23_quete_mais] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ah, enfin réussi !","italic":true}]
execute if entity @s[tag=fe23_quete_mais] run tp @s -1763.5 112 -325.5 75 0
execute if entity @s[tag=fe23_quete_mais] run tag @s add fe23_quete_mais_2
execute if entity @s[tag=fe23_quete_mais] run tag @s remove fe23_quete_mais