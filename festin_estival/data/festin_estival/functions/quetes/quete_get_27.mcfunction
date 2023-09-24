execute unless entity @s[advancements={festin_estival:deblocage/pizza=true,festin_estival:deblocage/menthe=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Il semble occupé, je repasserai plus tard...","italic":true}]
execute unless entity @s[advancements={festin_estival:deblocage/pizza=true,festin_estival:deblocage/menthe=true}] run return -1

execute if entity @s[advancements={festin_estival:deblocage/get_27=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Sylvain Quiétude","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Merci beaucoup ! Corentin a l'air de se détendre un peu..."}]

execute if entity @s[tag=fe23_quete_get_27] if entity @s[advancements={festin_estival:quetes/get_27_caisse=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Sylvain Quiétude","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ma maison se trouve près de la colline dans la ville. Prends une bouteille dans la caisse à l'étage !"}]

execute if entity @s[tag=fe23_quete_get_27] if entity @s[advancements={festin_estival:quetes/get_27_caisse=true,festin_estival:quetes/get_27_cle=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Sylvain Quiétude","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ah oui, la clé ! Mince, je crois que je m'en suis débarrassé il y a quelques temps... Elle doit sûrement traîner dans les égoûts, va y faire un tour."}]

execute if entity @s[tag=fe23_quete_get_27] if entity @s[advancements={festin_estival:quetes/get_27_cle=true,festin_estival:quetes/get_27_caisse_cle=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Sylvain Quiétude","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Tu as trouvé la clé ? Impressionnant, tu peux aller ouvrir la caisse maintenant !"}]

execute if entity @s[tag=fe23_quete_get_27] if entity @s[advancements={festin_estival:quetes/get_27_caisse_cle=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Sylvain Quiétude","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Cette bouteille de Get 27 ira très bien, merci ! Je vais l'apporter à mon fils."}]
execute if entity @s[tag=fe23_quete_get_27] if entity @s[advancements={festin_estival:quetes/get_27_caisse_cle=true}] run advancement grant @s only festin_estival:deblocage/get_27
execute if entity @s[tag=fe23_quete_get_27] if entity @s[advancements={festin_estival:quetes/get_27_caisse_cle=true}] run tag @s remove fe23_quete_get_27

execute unless entity @s[tag=fe23_quete_get_27] if entity @s[advancements={festin_estival:deblocage/get_27=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Sylvain Quiétude","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bonjour. J'aurais besoin de toi car je m'inquiète pour mon fils, Corentin. Il stresse tout le temps ! Va chez moi, et prends une bouteille d'alcool dans la caisse à l'étage. Ma maison est un peu en retrait dans la ville, près de la colline."}]
execute unless entity @s[tag=fe23_quete_get_27] if entity @s[advancements={festin_estival:deblocage/get_27=false}] run tag @s add fe23_quete_get_27