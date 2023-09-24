execute if entity @s[tag=fe23_quete_biscuit_chinois] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Pierre-Jean Darme","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Hum, j'ai entendu parler de ce biscuit qui provoque des événements étranges... La recette doit forcément inclure quelque chose sur lequel on peut écrire, tu ne crois pas ?"}]
execute if entity @s[tag=fe23_quete_biscuit_chinois] run tag @s add fe23_quete_biscuit_chinois_2
execute if entity @s[tag=fe23_quete_biscuit_chinois] run return 0

execute unless entity @s[advancements={festin_estival:deblocage/jambon=true,festin_estival:deblocage/beurre=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ce policier a l'air occupé, je repasserai plus tard...","italic":true}]
execute unless entity @s[advancements={festin_estival:deblocage/jambon=true,festin_estival:deblocage/beurre=true}] run return -1

execute if entity @s[advancements={festin_estival:deblocage/jambon_beurre=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Pierre-Jean Darme","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" J'ai hâte d'interroger le coupable !"}]
execute if entity @s[advancements={festin_estival:deblocage/jambon_beurre=true}] run return 0

execute if entity @s[tag=fe23_quete_jambon_beurre] unless entity @s[tag=fe23_quete_jambon_beurre_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Pierre-Jean Darme","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" As-tu bien parlé aux habitants dans toute la ville ?"}]
execute if entity @s[tag=fe23_quete_jambon_beurre] unless entity @s[tag=fe23_quete_jambon_beurre_2] run return 0

execute if entity @s[tag=fe23_quete_jambon_beurre] if entity @s[tag=fe23_quete_jambon_beurre_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Pierre-Jean Darme","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ah, tu as trouvé le coupable, parfait ! Je m'en occupe, merci beaucoup pour ton aide ! Et tiens, voilà la recette."}]
execute if entity @s[tag=fe23_quete_jambon_beurre] if entity @s[tag=fe23_quete_jambon_beurre_2] run advancement grant @s only festin_estival:deblocage/jambon_beurre
execute if entity @s[tag=fe23_quete_jambon_beurre] if entity @s[tag=fe23_quete_jambon_beurre_2] run tag @s remove fe23_quete_jambon_beurre_2
execute if entity @s[tag=fe23_quete_jambon_beurre] run tag @s remove fe23_quete_jambon_beurre

execute unless entity @s[tag=fe23_quete_jambon_beurre] if entity @s[advancements={festin_estival:deblocage/jambon_beurre=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Pierre-Jean Darme","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bonjour toi, tu tombes bien ! Le fameux chef cuistot de la ville voisine, Lorenzo Debo, a mystérieusement disparu sans laisser de traces. Et avec lui, sa légendaire recette de sandwich..."}]
execute unless entity @s[tag=fe23_quete_jambon_beurre] if entity @s[advancements={festin_estival:deblocage/jambon_beurre=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Pierre-Jean Darme","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" On soupçonne le coupable d'être venu dans cette ville. Interroge les habitants pour le trouver !"}]
execute unless entity @s[tag=fe23_quete_jambon_beurre] if entity @s[advancements={festin_estival:deblocage/jambon_beurre=false}] run tag @s add fe23_quete_jambon_beurre