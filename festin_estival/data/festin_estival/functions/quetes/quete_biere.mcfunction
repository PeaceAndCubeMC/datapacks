execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 3 run tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Renaud Bergiste","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ce n'est pas la bonne réponse !"}]
execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 4 run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Renaud Bergiste","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" C'est la bonne réponse ! Va voir Rémi Stérieux."}]
execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 2..3 run function festin_estival:quetes/quete_hamburger_question_2
execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 2..4 run return 0

execute if entity @s[tag=fe23_quete_jambon_beurre] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Renaud Bergiste","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" B'jour toi ! Écoute bien... L'gars qui travaille à la mine, il est passé c'matin. J'te le dis, il était pas normal..."}]
execute if entity @s[tag=fe23_quete_jambon_beurre] run return 0

execute unless entity @s[advancements={festin_estival:deblocage/houblon=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" L'aubergiste semble occupé, je repasserai plus tard...","italic":true}]
execute unless entity @s[advancements={festin_estival:deblocage/houblon=true}] run return -1

execute if entity @s[advancements={festin_estival:deblocage/biere=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Renaud Bergiste","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" J'te sers quelque chose ?"}]

execute if entity @s[tag=fe23_quete_biere] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Renaud Bergiste","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" T'as bien r'gardé partout dans la ville ?"}]

execute if entity @s[tag=fe23_quete_biere_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Renaud Bergiste","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" T'as bien r'gardé partout dans la ville ?"}]

execute if entity @s[tag=fe23_quete_biere_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Renaud Bergiste","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" T'as bien r'gardé partout dans la ville ?"}]

execute if entity @s[tag=fe23_quete_biere_4] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Renaud Bergiste","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ah, t'as dû arriver trop tard... C'est pas grave, un grand merci !"}]
execute if entity @s[tag=fe23_quete_biere_4] run advancement grant @s only festin_estival:deblocage/biere
execute if entity @s[tag=fe23_quete_biere_4] run tag @s remove fe23_quete_biere_4

execute unless entity @s[tag=fe23_quete_biere] unless entity @s[tag=fe23_quete_biere_2] unless entity @s[tag=fe23_quete_biere_3] unless entity @s[tag=fe23_quete_biere_4] if entity @s[advancements={festin_estival:deblocage/biere=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Renaud Bergiste","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" B'jour ! J'vois qu't'as rien à faire, viens donc m'aider. Des voleurs m'ont piqué une caisse de bière ! Ils ont sûrement une planque dans la ville..."}]
execute unless entity @s[tag=fe23_quete_biere] unless entity @s[tag=fe23_quete_biere_2] unless entity @s[tag=fe23_quete_biere_3] unless entity @s[tag=fe23_quete_biere_4] if entity @s[advancements={festin_estival:deblocage/biere=false}] run tag @s add fe23_quete_biere