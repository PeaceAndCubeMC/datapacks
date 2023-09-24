execute unless entity @s[advancements={festin_estival:deblocage/tomate=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Elle semble occupée, je repasserai plus tard...","italic":true}]
execute unless entity @s[advancements={festin_estival:deblocage/tomate=true}] run return -1

execute if entity @s[advancements={festin_estival:deblocage/ratatouille=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Léna Limentaire","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Je n'en reviens pas, la recette était réelle !"}]
execute if entity @s[advancements={festin_estival:deblocage/ratatouille=true}] run return 0

execute at @s if entity @e[type=player,tag=fe23_quete_ratatouille,distance=1..] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Léna Limentaire","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oh, excuse-moi, je suis occupée avec quelqu'un d'autre pour le moment. Repasse plus tard !"}]
execute at @s if entity @e[type=player,tag=fe23_quete_ratatouille,distance=1..] run return 0

execute if entity @s[tag=fe23_quete_ratatouille] if entity @s[advancements={festin_estival:quetes/ratatouille_kill=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Léna Limentaire","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Mon rêve parlait d'un endroit creusé dans le sol, quelque part dans la ville..."}]
execute if entity @s[tag=fe23_quete_ratatouille] if entity @s[advancements={festin_estival:quetes/ratatouille_kill=false}] run return 0

execute if entity @s[tag=fe23_quete_ratatouille] if entity @s[advancements={festin_estival:quetes/ratatouille_kill=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Léna Limentaire","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Mon rêve disait donc vrai ! Goûtons cette ratatouille... Hum, miam. C'est délicieux !"}]
execute if entity @s[tag=fe23_quete_ratatouille] if entity @s[advancements={festin_estival:quetes/ratatouille_kill=true}] run advancement grant @s only festin_estival:deblocage/ratatouille
execute if entity @s[tag=fe23_quete_ratatouille] if entity @s[advancements={festin_estival:quetes/ratatouille_kill=true}] run tag @s remove fe23_quete_ratatouille

execute unless entity @s[tag=fe23_quete_ratatouille] if entity @s[advancements={festin_estival:deblocage/ratatouille=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Léna Limentaire","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Salut ! J'ai fait un rêve très étrange il y a quelques jours... Il faisait référence à une recette légendaire, accessible depuis un endroit creusé dans le sol, quelque part dans la ville... Et si c'était un rêve prémonitoire ?"}]
execute unless entity @s[tag=fe23_quete_ratatouille] if entity @s[advancements={festin_estival:deblocage/ratatouille=false}] run tag @s add fe23_quete_ratatouille