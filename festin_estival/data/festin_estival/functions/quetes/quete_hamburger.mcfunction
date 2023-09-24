execute unless entity @s[advancements={festin_estival:deblocage/salade_verte=true,festin_estival:deblocage/tomate=true,festin_estival:deblocage/fromage=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ils semblent occupés, je repasserai plus tard...","italic":true}]
execute unless entity @s[advancements={festin_estival:deblocage/salade_verte=true,festin_estival:deblocage/tomate=true,festin_estival:deblocage/fromage=true}] run return -1

execute if entity @s[tag=fe23_quete_hamburger] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Lucas","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Va dans le grenier, on te rejoint !"}]
execute if entity @s[tag=fe23_quete_hamburger] run return 0

execute unless entity @s[tag=fe23_quete_hamburger] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Will","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Rebonjour "},{"selector":"@s","color":"white"},{"text":" !"}]
execute unless entity @s[tag=fe23_quete_hamburger] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Dustin","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Il ne nous reste que le grenier à explorer, tu viens ?"}]
execute unless entity @s[tag=fe23_quete_hamburger] run tag @s add fe23_quete_hamburger