execute unless entity @s[advancements={festin_estival:deblocage/riz=true,festin_estival:deblocage/thon=true,festin_estival:deblocage/avocat=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ils semblent occupés, je repasserai plus tard...","italic":true}]
execute unless entity @s[advancements={festin_estival:deblocage/riz=true,festin_estival:deblocage/thon=true,festin_estival:deblocage/avocat=true}] run return -1

execute if entity @s[tag=fe23_quete_maki] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Mike","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Tu viens voir le rez-de-chaussée ?"}]
execute if entity @s[tag=fe23_quete_maki] run return 0

execute unless entity @s[tag=fe23_quete_maki] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Dustin","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Tiens, t'es de retour !"}]
execute unless entity @s[tag=fe23_quete_maki] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Lucas","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Est-ce que ça te dirait d'explorer le reste de la maison avec nous ?"}]
execute unless entity @s[tag=fe23_quete_maki] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Will","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Viens, on va aller au rez-de-chaussée !"}]
execute unless entity @s[tag=fe23_quete_maki] run tag @s add fe23_quete_maki