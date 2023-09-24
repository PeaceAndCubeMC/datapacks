execute if entity @s[tag=fe23_quete_pizza] if entity @s[tag=fe23_quete_pizza_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Donatello","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Yo, moi c'est Donatello. J'ai toujours préféré régler les conflits pacifiquement."}]
execute if entity @s[tag=fe23_quete_pizza] if entity @s[tag=fe23_quete_pizza_2] run tag @s add fe23_quete_pizza_3
execute if entity @s[tag=fe23_quete_pizza] if entity @s[tag=fe23_quete_pizza_2] run return 0

tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Donatello","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Cowabunga !"}]