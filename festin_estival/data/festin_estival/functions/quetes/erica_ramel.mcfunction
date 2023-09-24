execute if entity @s[tag=fe23_quete_jambon_beurre] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Erica Ramel","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ursula Lchimie te donnera sûrement des infos sur le coupable si tu lui donnes un peu de rhum..."}]
execute if entity @s[tag=fe23_quete_jambon_beurre] run return 0

execute if entity @s[tag=fe23_quete_mousse_chocolat] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Erica Ramel","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Manu Tella a raison, mettons en commun notre travail ! Et si on inventait... un dessert qui utilise nos trois chocolats ? Parle-lui en !"}]
execute if entity @s[tag=fe23_quete_mousse_chocolat] run tag @s add fe23_quete_mousse_chocolat_2
execute if entity @s[tag=fe23_quete_mousse_chocolat] run return 0

execute if entity @s[advancements={festin_estival:deblocage/chocolat_noir=true,festin_estival:deblocage/chocolat_blanc=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Erica Ramel","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Viens sur ce stand si tu veux le meilleur chocolat de la ville !"}]

execute if entity @s[advancements={festin_estival:deblocage/chocolat_noir=false}] run function festin_estival:quetes/quete_chocolat_noir
execute if entity @s[advancements={festin_estival:deblocage/chocolat_noir=false}] run return 0

execute if entity @s[advancements={festin_estival:deblocage/chocolat_blanc=false}] run function festin_estival:quetes/quete_chocolat_blanc
execute if entity @s[advancements={festin_estival:deblocage/chocolat_blanc=false}] run return 0