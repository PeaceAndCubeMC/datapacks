execute if entity @s[tag=fe23_quete_pizza] if entity @s[tag=fe23_quete_pizza_1] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Raphael","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Salut, je suis Raphael ! Si Leonardo te dérange trop, je peux m'en occuper..."}]
execute if entity @s[tag=fe23_quete_pizza] if entity @s[tag=fe23_quete_pizza_1] run tag @s add fe23_quete_pizza_2
execute if entity @s[tag=fe23_quete_pizza] if entity @s[tag=fe23_quete_pizza_1] run return 0

tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Raphael","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Cowabunga !"}]