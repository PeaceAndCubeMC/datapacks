execute if entity @s[advancements={festin_estival:deblocage/chocolat_lait=true,festin_estival:deblocage/mousse_chocolat=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Manu Tella","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Le meilleur chocolat se trouve ici !"}]

execute if entity @s[advancements={festin_estival:deblocage/chocolat_lait=false}] run function festin_estival:quetes/quete_chocolat_lait
execute if entity @s[advancements={festin_estival:deblocage/chocolat_lait=false}] run return 0

execute if entity @s[advancements={festin_estival:deblocage/chocolat_lait=true,festin_estival:deblocage/chocolat_blanc=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Je devrais parler de ça à Erica Ramel...","italic":true}]
execute if entity @s[advancements={festin_estival:deblocage/chocolat_lait=true,festin_estival:deblocage/chocolat_blanc=false}] run return 0

execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=false}] run function festin_estival:quetes/quete_mousse_chocolat
execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=false}] run return 0