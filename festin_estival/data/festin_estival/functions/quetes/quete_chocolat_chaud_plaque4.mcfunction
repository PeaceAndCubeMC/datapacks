tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Cette grotte renferme des espèces de champignons que je ne connaissais pas...","italic":true}]

execute if entity @s[tag=fe23_quete_chocolat_chaud] if entity @s[tag=fe23_quete_chocolat_chaud_3] run tag @s add fe23_quete_chocolat_chaud_4
execute if entity @s[tag=fe23_quete_chocolat_chaud] if entity @s[tag=fe23_quete_chocolat_chaud_3] run tag @s remove fe23_quete_chocolat_chaud_3

execute if entity @s[tag=fe23_quete_chocolat_chaud] if entity @s[tag=fe23_quete_chocolat_chaud_4] run return 0

execute if entity @s[tag=fe23_quete_chocolat_chaud] run tag @s remove fe23_quete_chocolat_chaud_1
execute if entity @s[tag=fe23_quete_chocolat_chaud] run tag @s remove fe23_quete_chocolat_chaud_2
execute if entity @s[tag=fe23_quete_chocolat_chaud] run tag @s remove fe23_quete_chocolat_chaud_3
execute if entity @s[tag=fe23_quete_chocolat_chaud] run tag @s remove fe23_quete_chocolat_chaud_4
execute if entity @s[tag=fe23_quete_chocolat_chaud] run tag @s remove fe23_quete_chocolat_chaud_5