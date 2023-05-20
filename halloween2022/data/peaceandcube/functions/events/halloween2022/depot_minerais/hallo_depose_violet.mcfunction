execute store result score @s hallo_jauge_violet_clear run clear @s minecraft:prismarine_crystals{tag:"halloween2022"}
scoreboard players operation Total hallo_jauge_violet += @s hallo_jauge_violet_clear
scoreboard players operation @s hallo_jauge_violet += @s hallo_jauge_violet_clear
tellraw @s [{"text":"\u25bc ","color":"dark_purple"},{"text":"Grain sucré","color":"#D1F2EB"},{"text":" déposé(s) : ","color":"gray"},{"score":{"name":"@s","objective":"hallo_jauge_violet_clear"},"color":"yellow"}]
scoreboard players reset @s hallo_jauge_violet_clear

tellraw @s [{"text":"Tu as déposé un total de ","color":"gray"},{"score":{"name":"@s","objective":"hallo_jauge_violet"},"bold":true,"color":"yellow"},{"text":" minerais violets.","color":"gray"}]