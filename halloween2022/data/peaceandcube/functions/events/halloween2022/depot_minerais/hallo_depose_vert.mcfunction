execute store result score @s hallo_jauge_vert_clear run clear @s minecraft:beetroot_seeds{tag:"halloween2022"}
scoreboard players operation Total hallo_jauge_vert += @s hallo_jauge_vert_clear
scoreboard players operation @s hallo_jauge_vert += @s hallo_jauge_vert_clear
tellraw @s [{"text":"\u25a0 ","color":"green"},{"text":"Éclat de caramel","color":"#C6733D"},{"text":" déposé(s) : ","color":"gray"},{"score":{"name":"@s","objective":"hallo_jauge_vert_clear"},"color":"yellow"}]
scoreboard players reset @s hallo_jauge_vert_clear

execute store result score @s hallo_jauge_vert_clear run clear @s minecraft:glow_berries{tag:"halloween2022"}
scoreboard players operation Total hallo_jauge_vert += @s hallo_jauge_vert_clear
scoreboard players operation @s hallo_jauge_vert += @s hallo_jauge_vert_clear
tellraw @s [{"text":"\u25a0 ","color":"green"},{"text":"Baie mielleuse","color":"#F3C622"},{"text":" déposée(s) : ","color":"gray"},{"score":{"name":"@s","objective":"hallo_jauge_vert_clear"},"color":"yellow"}]
scoreboard players reset @s hallo_jauge_vert_clear

tellraw @s [{"text":"Tu as déposé un total de ","color":"gray"},{"score":{"name":"@s","objective":"hallo_jauge_vert"},"bold":true,"color":"yellow"},{"text":" minerais verts.","color":"gray"}]