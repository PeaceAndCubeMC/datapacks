execute if entity @s[tag=fe23_quete_hot_dog_2] unless entity @s[tag=fe23_quete_hot_dog_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ah, voilà son chien ! Mais... oh non... pas dans le feu !","italic":true}]
execute if entity @s[tag=fe23_quete_hot_dog_2] unless entity @s[tag=fe23_quete_hot_dog_3] run data modify entity @e[type=minecraft:wolf,distance=..15,limit=1,tag=fe23_chien] NoAI set value 0b
#execute if entity @s[tag=fe23_quete_hot_dog_2] unless entity @s[tag=fe23_quete_hot_dog_3] run data modify entity @e[type=minecraft:wolf,distance=..15,limit=1,tag=fe23_chien] Motion set value [-2.0,1.2,0.0]
execute if entity @s[tag=fe23_quete_hot_dog_2] unless entity @s[tag=fe23_quete_hot_dog_3] run tp @e[type=minecraft:wolf,distance=..15,limit=1,tag=fe23_chien] -1792 112 -436
execute if entity @s[tag=fe23_quete_hot_dog_2] unless entity @s[tag=fe23_quete_hot_dog_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Je vais aller prévenir Margaux Secours de ce pas !","italic":true}]
execute if entity @s[tag=fe23_quete_hot_dog_2] unless entity @s[tag=fe23_quete_hot_dog_3] run tag @s add fe23_quete_hot_dog_3