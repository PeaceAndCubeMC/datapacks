execute if entity @s[advancements={festin_estival:deblocage/jambon=false}] run function festin_estival:quetes/quete_jambon
execute if entity @s[advancements={festin_estival:deblocage/jambon=false}] run return 0

execute if entity @s[advancements={festin_estival:deblocage/saucisse=false}] run function festin_estival:quetes/quete_saucisse
execute if entity @s[advancements={festin_estival:deblocage/saucisse=false}] run return 0

tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Eddy Mension","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Décidément, je vais avoir de la viande à revendre !"}]