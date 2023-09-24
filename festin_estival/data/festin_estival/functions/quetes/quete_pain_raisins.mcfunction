execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 17 run tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Latifa Rine","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ce n'est pas la bonne réponse !"}]
execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 18 run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Latifa Rine","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" C'est la bonne réponse ! Va voir Sacha Lutier."}]
execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 16..17 run function festin_estival:quetes/quete_hamburger_question_9
execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 16..18 run return 0

execute if entity @s[tag=fe23_quete_chocolat_lait] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Latifa Rine","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Hum, un nouveau type de chocolat ? Tu auras plus de chance avec Annabelle Actose..."}]
execute if entity @s[tag=fe23_quete_chocolat_lait] run tag @s add fe23_quete_chocolat_lait_2
execute if entity @s[tag=fe23_quete_chocolat_lait] run return 0

execute unless entity @s[advancements={festin_estival:deblocage/gateau_chocolat=true,festin_estival:deblocage/beurre=true,festin_estival:deblocage/raisin=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Elle est visiblement occupée pour le moment, je repasserai plus tard...","italic":true}]
execute unless entity @s[advancements={festin_estival:deblocage/gateau_chocolat=true,festin_estival:deblocage/beurre=true,festin_estival:deblocage/raisin=true}] run return -1

execute if entity @s[advancements={festin_estival:deblocage/pain_chocolat=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Latifa Rine","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Que puis-je te servir ?"}]

execute if entity @s[tag=fe23_quete_pain_raisins] unless entity @s[tag=fe23_quete_pain_raisins_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Latifa Rine","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Va voir Éric Huisine pour la liste des ingrédients !"}]
execute if entity @s[tag=fe23_quete_pain_raisins] unless entity @s[tag=fe23_quete_pain_raisins_2] run return 0

execute if entity @s[tag=fe23_quete_pain_raisins_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Latifa Rine","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Tu pourras assister au cours si tu possèdes tous les ingrédients de la liste !"}]
execute if entity @s[tag=fe23_quete_pain_raisins_2] run return 0

execute unless entity @s[tag=fe23_quete_pain_raisins] if entity @s[advancements={festin_estival:deblocage/pain_raisins=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Latifa Rine","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bonjour ! Nous organisons un deuxième cours de cuisine. Va chercher la liste des ingrédients auprès de Éric Huisine, et tu pourras y assister !"}]
execute unless entity @s[tag=fe23_quete_pain_raisins] if entity @s[advancements={festin_estival:deblocage/pain_raisins=false}] run tag @s add fe23_quete_pain_raisins