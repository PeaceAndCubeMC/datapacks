advancement revoke @s only noel2021:ph_poisson/salmon
execute unless score @s noel21_ph_lvl matches 3.. run tellraw @s ["",{"text":"Pêche hivernale","bold":true,"color":"#C4FDFF"},{"text":" \u2744","color":"white"},{"text":" >","bold":true,"color":"#C4FDFF"},{"text":" Tu ne peux pas encore stocker le ","color":"#D5545C"},{"text":"Saumon frais","color":"#C4FDFF"},{"text":" à ton niveau.","color":"#D5545C"}]
execute if score @s noel21_ph_lvl matches 3.. run execute store result score @s noel21_ph_point2 run clear @s minecraft:salmon{Tags:["ph_fish","ph_fish_4"]}
execute if score @s noel21_ph_lvl matches 3.. run scoreboard players operation @s noel21_ph_point2 *= ph_saumon noel21_ph_points
execute if score @s noel21_ph_lvl matches 3.. run scoreboard players operation @s noel21_ph_points += @s noel21_ph_point2
execute if score @s noel21_ph_lvl matches 3.. run tellraw @s ["",{"text":"Pêche hivernale","bold":true,"color":"#C4FDFF"},{"text":" \u2744","color":"white"},{"text":" >","bold":true,"color":"#C4FDFF"},{"text":" Tu viens de stocker tes ","color":"#6BED8F"},{"text":"Saumons frais","color":"#C4FDFF"},{"text":" contre ","color":"#6BED8F"},{"score":{"name":"@s","objective":"noel21_ph_point2"},"bold":true,"color":"#C4FDFF"},{"text":" points.","color":"#6BED8F"}]
execute if score @s noel21_ph_lvl matches 3.. run scoreboard players reset @s noel21_ph_point2
execute as @s run data modify entity @e[type=minecraft:item_frame,limit=1,sort=nearest,distance=..10,tag=ph_barrel_salmon] ItemRotation set value 0
execute as @s run playsound minecraft:block.end_portal_frame.fill ambient @s ~ ~ ~ 10 0.8