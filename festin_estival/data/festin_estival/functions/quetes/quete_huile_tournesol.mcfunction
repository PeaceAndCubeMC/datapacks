execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 13 run tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Donald Heumaingauche","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ce n'est pas la bonne réponse !"}]
execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 14 run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Donald Heumaingauche","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" C'est la bonne réponse ! Va voir Marie Basmati."}]
execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 12..13 run function festin_estival:quetes/quete_hamburger_question_7
execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 12..14 run return 0

execute unless entity @s[tag=!fe23_quete_huile_tournesol,tag=!fe23_quete_huile_tournesol_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Donald Heumaingauche","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Alors, qui a fait ça ?"}]
execute unless entity @s[tag=!fe23_quete_huile_tournesol,tag=!fe23_quete_huile_tournesol_2] run return 0

execute if entity @s[advancements={festin_estival:deblocage/huile_tournesol=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Donald Heumaingauche","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Mouais bizarre, j'ai du mal à y croire..."}]

execute unless entity @s[tag=fe23_quete_huile_tournesol] if entity @s[advancements={festin_estival:deblocage/huile_tournesol=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Donald Heumaingauche","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Aïe aïe aïe ! Je viens d'tomber de m'charrette... J'ai l'impression qu'on a essayé de me tuer ! Tu pourrais investiguer la zone ?"}]
execute unless entity @s[tag=fe23_quete_huile_tournesol] if entity @s[advancements={festin_estival:deblocage/huile_tournesol=false}] run tag @s add fe23_quete_huile_tournesol