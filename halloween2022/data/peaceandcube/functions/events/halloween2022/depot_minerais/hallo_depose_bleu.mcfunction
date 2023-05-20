execute store result score @s hallo_jauge_bleu_clear run clear @s minecraft:popped_chorus_fruit{tag:"halloween2022"}
scoreboard players operation Total hallo_jauge_bleu += @s hallo_jauge_bleu_clear
scoreboard players operation @s hallo_jauge_bleu += @s hallo_jauge_bleu_clear
tellraw @s [{"text":"\u25c6 ","color":"aqua"},{"text":"Guimauve","color":"#AF6B9C"},{"text":" déposée(s) : ","color":"gray"},{"score":{"name":"@s","objective":"hallo_jauge_bleu_clear"},"color":"yellow"}]
scoreboard players reset @s hallo_jauge_bleu_clear

execute store result score @s hallo_jauge_bleu_clear run clear @s minecraft:glow_ink_sac{tag:"halloween2022"}
scoreboard players operation Total hallo_jauge_bleu += @s hallo_jauge_bleu_clear
scoreboard players operation @s hallo_jauge_bleu += @s hallo_jauge_bleu_clear
tellraw @s [{"text":"\u25c6 ","color":"aqua"},{"text":"Gelée bleue","color":"#276D9A"},{"text":" déposée(s) : ","color":"gray"},{"score":{"name":"@s","objective":"hallo_jauge_bleu_clear"},"color":"yellow"}]
scoreboard players reset @s hallo_jauge_bleu_clear

tellraw @s [{"text":"Tu as déposé un total de ","color":"gray"},{"score":{"name":"@s","objective":"hallo_jauge_bleu"},"bold":true,"color":"yellow"},{"text":" minerais bleus.","color":"gray"}]