execute if entity @s[tag=fe23_quete_pizza] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Leonardo","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Salut ! Je suis Leonardo, et je suis l'aîné de ma fratrie. Parle à mes frères du plus vieux au plus jeune !"}]
execute if entity @s[tag=fe23_quete_pizza] run tag @s add fe23_quete_pizza_1
execute if entity @s[tag=fe23_quete_pizza] run return 0

tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Leonardo","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Cowabunga !"}]