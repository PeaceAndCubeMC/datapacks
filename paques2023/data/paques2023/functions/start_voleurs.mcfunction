execute if entity @e[type=minecraft:player,gamemode=survival,x=200194,y=61,z=-299224,distance=..15] run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Pâques 2023","color":"#54A448"},{"text":"]","color":"gray"},{"text":" Il y a déjà un joueur en train de se battre !","color":"#FFFCB9"}]

execute unless entity @e[type=minecraft:player,gamemode=survival,x=200194,y=61,z=-299224,distance=..15] run kill @e[type=minecraft:husk,x=200194,y=61,z=-299224,distance=..15]
execute unless entity @e[type=minecraft:player,gamemode=survival,x=200194,y=61,z=-299224,distance=..15] run function paques2023:spawn_voleurs
execute unless entity @e[type=minecraft:player,gamemode=survival,x=200194,y=61,z=-299224,distance=..15] run tp @s 200203 62 -299230 45 0