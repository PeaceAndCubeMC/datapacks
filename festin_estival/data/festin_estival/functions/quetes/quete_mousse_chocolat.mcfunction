execute unless entity @s[advancements={festin_estival:deblocage/chocolat_blanc=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Il semble occupé, je repasserai plus tard...","italic":true}]
execute unless entity @s[advancements={festin_estival:deblocage/chocolat_blanc=true}] run return -1

execute if entity @s[tag=fe23_quete_mousse_chocolat] unless entity @s[tag=fe23_quete_mousse_chocolat_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Manu Tella","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Alors, qu'en pense Erica Ramel ?"}]

execute if entity @s[tag=fe23_quete_mousse_chocolat] if entity @s[tag=fe23_quete_mousse_chocolat_2] unless entity @s[tag=fe23_quete_mousse_chocolat_4] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Manu Tella","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Quelle bonne idée ! Demande à Éric Huisine s'il a une idée."}]

execute if entity @s[tag=fe23_quete_mousse_chocolat] if entity @s[tag=fe23_quete_mousse_chocolat_4] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Manu Tella","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oh, c'est donc une mousse aux trois chocolats ? On va se régaler !"}]
execute if entity @s[tag=fe23_quete_mousse_chocolat] if entity @s[tag=fe23_quete_mousse_chocolat_4] run advancement grant @s only festin_estival:deblocage/mousse_chocolat
execute if entity @s[tag=fe23_quete_mousse_chocolat] if entity @s[tag=fe23_quete_mousse_chocolat_4] run tag @s remove fe23_quete_mousse_chocolat_2
execute if entity @s[tag=fe23_quete_mousse_chocolat] if entity @s[tag=fe23_quete_mousse_chocolat_4] run tag @s remove fe23_quete_mousse_chocolat_3
execute if entity @s[tag=fe23_quete_mousse_chocolat] if entity @s[tag=fe23_quete_mousse_chocolat_4] run tag @s remove fe23_quete_mousse_chocolat_4
execute if entity @s[tag=fe23_quete_mousse_chocolat] if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] run tag @s remove fe23_quete_mousse_chocolat

execute unless entity @s[tag=fe23_quete_mousse_chocolat] if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Manu Tella","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Cette bataille pour avoir le chocolat le plus original ne mènera à rien... On devrait plutôt s'entraider ! Qu'en pense Erica Ramel ?"}]
execute unless entity @s[tag=fe23_quete_mousse_chocolat] if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=false}] run tag @s add fe23_quete_mousse_chocolat