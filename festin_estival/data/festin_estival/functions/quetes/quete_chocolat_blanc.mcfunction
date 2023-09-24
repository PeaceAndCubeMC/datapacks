execute unless entity @s[advancements={festin_estival:deblocage/chocolat_lait=true,festin_estival:deblocage/beurre=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Elle semble occupée, je repasserai plus tard...","italic":true}]
execute unless entity @s[advancements={festin_estival:deblocage/chocolat_lait=true,festin_estival:deblocage/beurre=true}] run return -1

execute if entity @s[tag=fe23_quete_chocolat_blanc] unless entity @s[tag=fe23_quete_chocolat_blanc_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Erica Ramel","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Estève Decacao saura sûrement t'aider !"}]

execute if entity @s[tag=fe23_quete_chocolat_blanc] if entity @s[tag=fe23_quete_chocolat_blanc_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Erica Ramel","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bon, c'est pas vraiment du chocolat... Mais on va l'appeler « chocolat blanc » !"}]
execute if entity @s[tag=fe23_quete_chocolat_blanc] if entity @s[tag=fe23_quete_chocolat_blanc_3] run advancement grant @s only festin_estival:deblocage/chocolat_blanc
execute if entity @s[tag=fe23_quete_chocolat_blanc] if entity @s[tag=fe23_quete_chocolat_blanc_3] run tag @s remove fe23_quete_chocolat_blanc_2
execute if entity @s[tag=fe23_quete_chocolat_blanc] if entity @s[tag=fe23_quete_chocolat_blanc_3] run tag @s remove fe23_quete_chocolat_blanc_3
execute if entity @s[tag=fe23_quete_chocolat_blanc] if entity @s[advancements={festin_estival:deblocage/chocolat_blanc=true}] run tag @s remove fe23_quete_chocolat_blanc

execute if entity @s[advancements={festin_estival:deblocage/chocolat_blanc=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Cette guerre est ridicule... Je vais reparler à Manu Tella.","italic":true}]

execute unless entity @s[tag=fe23_quete_chocolat_blanc] if entity @s[advancements={festin_estival:deblocage/chocolat_blanc=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Erica Ramel","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Quoi ? Tu as aidé un concurrent ? Je dois trouver moi aussi un nouveau type de chocolat ! Pour te faire pardonner, demande à mon ami Estève Decacao."}]
execute unless entity @s[tag=fe23_quete_chocolat_blanc] if entity @s[advancements={festin_estival:deblocage/chocolat_blanc=false}] run tag @s add fe23_quete_chocolat_blanc