execute store result score @s hallo_jauge_rouge_clear run clear @s minecraft:tropical_fish_spawn_egg{tag:"halloween2022"}
scoreboard players operation Total hallo_jauge_rouge += @s hallo_jauge_rouge_clear
scoreboard players operation @s hallo_jauge_rouge += @s hallo_jauge_rouge_clear
tellraw @s [{"text":"\u25b2 ","color":"red"},{"text":"Bonbon piquant","color":"#FFA500"},{"text":" déposé(s) : ","color":"gray"},{"score":{"name":"@s","objective":"hallo_jauge_rouge_clear"},"color":"yellow"}]
scoreboard players reset @s hallo_jauge_rouge_clear

execute store result score @s hallo_jauge_rouge_clear run clear @s minecraft:sweet_berries{tag:"halloween2022"}
scoreboard players operation Total hallo_jauge_rouge += @s hallo_jauge_rouge_clear
scoreboard players operation @s hallo_jauge_rouge += @s hallo_jauge_rouge_clear
tellraw @s [{"text":"\u25b2 ","color":"red"},{"text":"Baie enflammée","color":"#F00020"},{"text":" déposée(s) : ","color":"gray"},{"score":{"name":"@s","objective":"hallo_jauge_rouge_clear"},"color":"yellow"}]
scoreboard players reset @s hallo_jauge_rouge_clear

tellraw @s [{"text":"Tu as déposé un total de ","color":"gray"},{"score":{"name":"@s","objective":"hallo_jauge_rouge"},"bold":true,"color":"yellow"},{"text":" minerais rouges.","color":"gray"}]