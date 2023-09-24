execute unless entity @s[advancements={festin_estival:deblocage/oignon=true,festin_estival:deblocage/sel=true,festin_estival:deblocage/huile_tournesol=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ils semblent occupés, je repasserai plus tard...","italic":true}]
execute unless entity @s[advancements={festin_estival:deblocage/oignon=true,festin_estival:deblocage/sel=true,festin_estival:deblocage/huile_tournesol=true}] run return -1

execute if entity @s[tag=fe23_quete_beignet_oignon] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Dustin","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Monte au premier étage, on arrive !"}]
execute if entity @s[tag=fe23_quete_beignet_oignon] run return 0

execute unless entity @s[tag=fe23_quete_beignet_oignon] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Lucas","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ah, te revoilà !"}]
execute unless entity @s[tag=fe23_quete_beignet_oignon] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Mike","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" On comptait passer au premier étage de la maison, tu viens avec nous ?"}]
execute unless entity @s[tag=fe23_quete_beignet_oignon] run tag @s add fe23_quete_beignet_oignon