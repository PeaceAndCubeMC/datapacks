execute unless entity @s[tag=fe23_quete_vin_rouge] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Il vaut mieux éviter de rentrer dans cette cave...","italic":true}]
execute unless entity @s[tag=fe23_quete_vin_rouge] run return 0

execute if entity @s[tag=fe23_quete_vin_rouge] if entity @s[advancements={festin_estival:quetes/vin_rouge=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" C'est bon, vous pouvez rentrer !"}]
execute if entity @s[tag=fe23_quete_vin_rouge] if entity @s[advancements={festin_estival:quetes/vin_rouge=true}] run tp @s -1874.5 73 -413.5 90 0
execute if entity @s[tag=fe23_quete_vin_rouge] if entity @s[advancements={festin_estival:quetes/vin_rouge=true}] run return 0

execute if entity @s[tag=fe23_quete_vin_rouge] positioned -1881 87 -411 if entity @e[type=minecraft:player,gamemode=survival,distance=..10] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" On dirait qu'il y a déjà quelqu'un à l'intérieur...","italic":true}]
execute if entity @s[tag=fe23_quete_vin_rouge] positioned -1881 87 -411 if entity @e[type=minecraft:player,gamemode=survival,distance=..10] run return -1

execute if entity @s[tag=fe23_quete_vin_rouge] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Rentrons dans la cave...","italic":true}]
execute if entity @s[tag=fe23_quete_vin_rouge] run advancement revoke @s only festin_estival:quetes/vin_rouge
execute if entity @s[tag=fe23_quete_vin_rouge] positioned -1881 87 -411 run kill @e[tag=fe23_cave,distance=..10]
execute if entity @s[tag=fe23_quete_vin_rouge] run summon vindicator -1884.5 87 -406.5 {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Health:50f,Tags:["fe23_cave"],HandItems:[{id:"minecraft:iron_axe",Count:1b},{}],HandDropChances:[-327.670F,0.085F],Attributes:[{Name:generic.max_health,Base:50}]}
execute if entity @s[tag=fe23_quete_vin_rouge] run summon vindicator -1882.5 87 -415.5 {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Health:50f,Tags:["fe23_cave"],HandItems:[{id:"minecraft:iron_axe",Count:1b},{}],HandDropChances:[-327.670F,0.085F],Attributes:[{Name:generic.max_health,Base:50}]}
execute if entity @s[tag=fe23_quete_vin_rouge] run summon vindicator -1879.5 87 -405.5 {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Health:50f,Tags:["fe23_cave"],HandItems:[{id:"minecraft:iron_axe",Count:1b},{}],HandDropChances:[-327.670F,0.085F],Attributes:[{Name:generic.max_health,Base:50}]}
execute if entity @s[tag=fe23_quete_vin_rouge] run tp @s -1874.5 87 -413.5 90 0