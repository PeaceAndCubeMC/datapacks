execute if entity @s[advancements={festin_estival:deblocage/get_27=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Corentin Quiétude","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Très bon ce petit sirop de menthe !"}]
execute if entity @s[advancements={festin_estival:deblocage/get_27=true}] run return 0

execute unless entity @s[advancements={festin_estival:deblocage/farine=true,festin_estival:deblocage/tomate=true,festin_estival:deblocage/fromage=true,festin_estival:deblocage/jambon=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Il semble occupé, je repasserai plus tard...","italic":true}]
execute unless entity @s[advancements={festin_estival:deblocage/farine=true,festin_estival:deblocage/tomate=true,festin_estival:deblocage/fromage=true,festin_estival:deblocage/jambon=true}] run return -1

execute if entity @s[advancements={festin_estival:deblocage/pizza=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Corentin Quiétude","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Euh... Merci... Je vais essayer de me détendre maintenant..."}]
execute if entity @s[advancements={festin_estival:deblocage/pizza=true}] run return 0

execute if entity @s[tag=fe23_quete_pizza] if entity @s[advancements={festin_estival:deblocage/pizza=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Corentin Quiétude","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Euh... Le bruit venait des égoûts..."}]
execute if entity @s[tag=fe23_quete_pizza] if entity @s[advancements={festin_estival:deblocage/pizza=false}] run return 0

execute unless entity @s[tag=fe23_quete_pizza] if entity @s[advancements={festin_estival:deblocage/pizza=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Corentin Quiétude","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Euh... Bonjour... J'ai cru entendre du bruit dans les égoûts tout à l'heure... Tu peux y faire un tour s'il te plaît ?"}]
execute unless entity @s[tag=fe23_quete_pizza] if entity @s[advancements={festin_estival:deblocage/pizza=false}] run tag @s add fe23_quete_pizza