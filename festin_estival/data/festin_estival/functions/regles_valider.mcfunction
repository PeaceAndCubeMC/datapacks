execute if score @s fe23_regles matches 0 run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Festin Estival","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Tu n'as pas encore cliqué sur Oui ou Non !"}]

execute if score @s fe23_regles matches 1 run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Festin Estival","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Tu as accepté les règles. Profite bien de l'événement !"}]
execute if score @s fe23_regles matches 1 run advancement grant @s only festin_estival:craft/root
execute if score @s fe23_regles matches 1 run tp @s -1705.0 107.0 -423.5 -180 0

execute if score @s fe23_regles matches 2 run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Festin Estival","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Tu as refusé les règles. Accepte les règles si tu veux participer à l'événement !"}]
execute if score @s fe23_regles matches 2 run advancement revoke @s only festin_estival:regles
execute if score @s fe23_regles matches 2 in minecraft:overworld run tp @s 200039.5 117.0 -299791.5 -90 0
execute if score @s fe23_regles matches 2 run scoreboard players set @s fe23_regles 0