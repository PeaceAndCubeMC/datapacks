execute unless entity @s[advancements={festin_estival:deblocage/moule=true,festin_estival:deblocage/frites=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Elle semble occupée, je repasserai plus tard...","italic":true}]
execute unless entity @s[advancements={festin_estival:deblocage/moule=true,festin_estival:deblocage/frites=true}] run return -1

execute if entity @s[advancements={festin_estival:deblocage/moules_frites=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Chloé Ritage","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oh, il est zoli le bateau !"}]
execute if entity @s[advancements={festin_estival:deblocage/moules_frites=true}] run return 0

execute if entity @s[tag=fe23_quete_moules_frites] unless entity @s[tag=fe23_quete_moules_frites_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Chloé Ritage","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Le dis à personne hein ! J't'ai pas dit que le temple était dans la forêt... J'te l'ai pas dit !"}]
execute if entity @s[tag=fe23_quete_moules_frites] unless entity @s[tag=fe23_quete_moules_frites_2] run return 0

execute if entity @s[tag=fe23_quete_moules_frites] if entity @s[tag=fe23_quete_moules_frites_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Eh petite, je crois que la recette est dans ton chapeau..."}]
execute if entity @s[tag=fe23_quete_moules_frites] if entity @s[tag=fe23_quete_moules_frites_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Chloé Ritage","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Dans mon chapeau ? Mon zoli chapeau ?"}]
execute if entity @s[tag=fe23_quete_moules_frites] if entity @s[tag=fe23_quete_moules_frites_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Chloé Ritage","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ooooooh ! Y a un papier qu'est coincé ! Recette des moules frites... Une moule, une frite... Tiens, z'aimes pas ça, prends le !"}]
execute if entity @s[tag=fe23_quete_moules_frites] if entity @s[tag=fe23_quete_moules_frites_2] run advancement grant @s only festin_estival:deblocage/moules_frites
execute if entity @s[tag=fe23_quete_moules_frites] if entity @s[tag=fe23_quete_moules_frites_2] run tag @s remove fe23_quete_moules_frites_2
execute if entity @s[tag=fe23_quete_moules_frites] run tag @s remove fe23_quete_moules_frites

execute unless entity @s[tag=fe23_quete_moules_frites] if entity @s[advancements={festin_estival:deblocage/moules_frites=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Chloé Ritage","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Eh eh, t'as vu mon beau chapeau ? Il est bien mon chapeau hein ? Tu veux une histoire ? Oh, y a un bateau ! Il est zoli ! Tu veux que j'te raconte une histoire ?"}]
execute unless entity @s[tag=fe23_quete_moules_frites] if entity @s[advancements={festin_estival:deblocage/moules_frites=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oh, elle est pleine d'énergie ! Écoutons son histoire...","italic":true}]
execute unless entity @s[tag=fe23_quete_moules_frites] if entity @s[advancements={festin_estival:deblocage/moules_frites=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Chloé Ritage","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Alors... Une fois, une fois, mon papi, il m'a dit il connaissait une recette... Une recette mazique ! Et il m'a dit quand je serai grande je pourrai la trouver. Parce que, parce que, il m'a dit qu'elle était cachée et elle était TRÈS ancienne. Il m'avait dit, il m'a dit où c'était mais je te dirai pas que c'est dans le temple dans la forêt ! Comme dans Zumanzi !"}]
execute unless entity @s[tag=fe23_quete_moules_frites] if entity @s[advancements={festin_estival:deblocage/moules_frites=false}] run tag @s add fe23_quete_moules_frites