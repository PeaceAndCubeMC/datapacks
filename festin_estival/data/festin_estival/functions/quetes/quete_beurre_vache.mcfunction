execute if entity @s[tag=fe23_quete_beurre_2] unless entity @s[tag=fe23_quete_beurre_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Comment faire descendre cette vache... Et si je la faisais atterir sur le tas de foin en bas ?","italic":true}]
execute if entity @s[tag=fe23_quete_beurre_2] unless entity @s[tag=fe23_quete_beurre_3] run data modify entity @e[type=minecraft:cow,distance=..15,limit=1,tag=fe23_vache_beurre] NoAI set value 0b
execute if entity @s[tag=fe23_quete_beurre_2] unless entity @s[tag=fe23_quete_beurre_3] run data modify entity @e[type=minecraft:cow,distance=..15,limit=1,tag=fe23_vache_beurre] Motion set value [-1.5,0.0,0.0]
execute if entity @s[tag=fe23_quete_beurre_2] unless entity @s[tag=fe23_quete_beurre_3] run ride @s mount @e[type=minecraft:cow,distance=..15,limit=1,tag=fe23_vache_beurre]
execute if entity @s[tag=fe23_quete_beurre_2] unless entity @s[tag=fe23_quete_beurre_3] run tag @s add fe23_quete_beurre_3