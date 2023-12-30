execute if entity @s[tag=fe23_quete_pain_raisins_4] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Patrick Seurie","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Déjà ? Laisse-moi vérifier ta préparation..."}]
execute if entity @s[tag=fe23_quete_pain_raisins_4] unless data block -1647 107 -426 {Items:[{Slot:0b,id:"minecraft:sugar",Count:1b,tag:{Tags:["fe23_farine"]}},{Slot:1b,id:"minecraft:egg",Count:1b},{Slot:2b,id:"minecraft:sugar",Count:1b},{Slot:3b,id:"minecraft:gold_ingot",Count:1b,tag:{Tags:["fe23_beurre"]}},{Slot:4b,id:"minecraft:cookie",Count:1b,tag:{Tags:["fe23_chocolat_noir"]}}]} run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Patrick Seurie","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Hum, quelque chose ne va pas... Pense à mettre les ingrédients dans le bon ordre, et en un seul exemplaire !"}]
execute if entity @s[tag=fe23_quete_pain_raisins_4] unless data block -1647 107 -426 {Items:[{Slot:0b,id:"minecraft:sugar",Count:1b,tag:{Tags:["fe23_farine"]}},{Slot:1b,id:"minecraft:egg",Count:1b},{Slot:2b,id:"minecraft:sugar",Count:1b},{Slot:3b,id:"minecraft:gold_ingot",Count:1b,tag:{Tags:["fe23_beurre"]}},{Slot:4b,id:"minecraft:cookie",Count:1b,tag:{Tags:["fe23_chocolat_noir"]}}]} run return 0

execute if entity @s[tag=fe23_quete_pain_raisins_4] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Patrick Seurie","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ton pain au chocolat a l'air délicieux !"}]
execute if entity @s[tag=fe23_quete_pain_raisins_4] run data remove block -1647 107 -426 Items
execute if entity @s[tag=fe23_quete_pain_raisins_4] run give @s bread{display:{Name:'{"text":"Pain au chocolat","color":"#C2A985","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une viennoiserie inventée en","color":"gray","italic":false}','{"text":"Autriche et fourrée au chocolat,","color":"gray","italic":false}','{"text":"aussi appelée « chocolatine »","color":"gray","italic":false}','{"text":"par une minorité de français.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7231,Tags:["fe23_pain_chocolat"]} 1
execute if entity @s[tag=fe23_quete_pain_raisins_4] run advancement grant @s only festin_estival:deblocage/pain_chocolat
execute if entity @s[tag=fe23_quete_pain_raisins_4] run tag @s remove fe23_quete_pain_raisins_2
execute if entity @s[tag=fe23_quete_pain_raisins_4] run tag @s remove fe23_quete_pain_raisins_3
execute if entity @s[tag=fe23_quete_pain_raisins_4] run tag @s remove fe23_quete_pain_raisins_4
execute if entity @s[advancements={festin_estival:deblocage/pain_chocolat=true}] run return 0

execute if entity @s[tag=fe23_quete_pain_raisins_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Patrick Seurie","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Déjà ? Laisse-moi vérifier ta préparation..."}]
execute if entity @s[tag=fe23_quete_pain_raisins_3] unless data block -1647 107 -426 {Items:[{Slot:0b,id:"minecraft:sugar",Count:1b,tag:{Tags:["fe23_farine"]}},{Slot:1b,id:"minecraft:egg",Count:1b},{Slot:2b,id:"minecraft:sugar",Count:1b},{Slot:3b,id:"minecraft:gold_ingot",Count:1b,tag:{Tags:["fe23_beurre"]}},{Slot:4b,id:"minecraft:sweet_berries",Count:1b,tag:{Tags:["fe23_raisin"]}}]} run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Patrick Seurie","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Hum, quelque chose ne va pas... Pense à mettre les ingrédients dans le bon ordre, et en un seul exemplaire !"}]
execute if entity @s[tag=fe23_quete_pain_raisins_3] unless data block -1647 107 -426 {Items:[{Slot:0b,id:"minecraft:sugar",Count:1b,tag:{Tags:["fe23_farine"]}},{Slot:1b,id:"minecraft:egg",Count:1b},{Slot:2b,id:"minecraft:sugar",Count:1b},{Slot:3b,id:"minecraft:gold_ingot",Count:1b,tag:{Tags:["fe23_beurre"]}},{Slot:4b,id:"minecraft:sweet_berries",Count:1b,tag:{Tags:["fe23_raisin"]}}]} run return 0

execute if entity @s[tag=fe23_quete_pain_raisins_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Patrick Seurie","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bravo, ton pain aux raisins semble impeccable !"}]
execute if entity @s[tag=fe23_quete_pain_raisins_3] run data remove block -1647 107 -426 Items
execute if entity @s[tag=fe23_quete_pain_raisins_3] run give @s bread{display:{Name:'{"text":"Pain aux raisins","color":"#C2A985","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une viennoiserie française en","color":"gray","italic":false}','{"text":"forme de spirale et composée","color":"gray","italic":false}','{"text":"de raisins secs.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_pain_raisins"]} 1
execute if entity @s[tag=fe23_quete_pain_raisins_3] run advancement grant @s only festin_estival:deblocage/pain_raisins
execute if entity @s[tag=fe23_quete_pain_raisins_3] run tag @s add fe23_quete_pain_raisins_4
execute if entity @s[tag=fe23_quete_pain_raisins_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Patrick Seurie","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Maintenant, si tu faisais un pain au chocolat ? La recette est très similaire !"}]
execute if entity @s[tag=fe23_quete_pain_raisins_3] run return 0

execute if entity @s[tag=fe23_quete_pain_raisins_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Patrick Seurie","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bienvenue dans ce nouveau cours de cuisine ! Aujourd'hui, tu vas devoir faire un pain aux raisins. Les ingrédients sont notés sur la liste !"}]
execute if entity @s[tag=fe23_quete_pain_raisins_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Patrick Seurie","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Place-toi devant l'emplacement libre et ajoute les ingrédients du pain aux raisins dans le bon ordre. Reviens me voir quand tu penses avoir réussi !"}]
execute if entity @s[tag=fe23_quete_pain_raisins_2] run tag @s add fe23_quete_pain_raisins_3
execute if entity @s[tag=fe23_quete_pain_raisins_2] run return 0

execute if entity @s[tag=fe23_quete_tarte_pommes_4] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Patrick Seurie","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ah, je me disais bien qu'il préparait quelque chose d'exceptionnel !"}]
execute if entity @s[tag=fe23_quete_tarte_pommes_4] run advancement grant @s only festin_estival:deblocage/gateau_chocolat
execute if entity @s[tag=fe23_quete_tarte_pommes_4] run tag @s remove fe23_quete_tarte_pommes
execute if entity @s[tag=fe23_quete_tarte_pommes_4] run tag @s remove fe23_quete_tarte_pommes_2
execute if entity @s[tag=fe23_quete_tarte_pommes_4] run tag @s remove fe23_quete_tarte_pommes_3
execute if entity @s[tag=fe23_quete_tarte_pommes_4] run tag @s remove fe23_quete_tarte_pommes_4

execute if entity @s[tag=fe23_quete_tarte_pommes_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Patrick Seurie","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Alors, comment il s'en sort Tom ?"}]
execute if entity @s[tag=fe23_quete_tarte_pommes_3] run return 0

execute if entity @s[tag=fe23_quete_tarte_pommes_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Patrick Seurie","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Déjà ? Laisse-moi vérifier ta préparation..."}]
execute if entity @s[tag=fe23_quete_tarte_pommes_2] unless data block -1647 107 -426 {Items:[{Slot:0b,id:"minecraft:sugar",Count:1b,tag:{Tags:["fe23_farine"]}},{Slot:1b,id:"minecraft:egg",Count:1b},{Slot:2b,id:"minecraft:sugar",Count:1b},{Slot:3b,id:"minecraft:apple",Count:1b}]} run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Patrick Seurie","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Hum, quelque chose ne va pas... Pense à mettre les ingrédients dans le bon ordre, et en un seul exemplaire !"}]
execute if entity @s[tag=fe23_quete_tarte_pommes_2] unless data block -1647 107 -426 {Items:[{Slot:0b,id:"minecraft:sugar",Count:1b,tag:{Tags:["fe23_farine"]}},{Slot:1b,id:"minecraft:egg",Count:1b},{Slot:2b,id:"minecraft:sugar",Count:1b},{Slot:3b,id:"minecraft:apple",Count:1b}]} run return 0

execute if entity @s[tag=fe23_quete_tarte_pommes_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Patrick Seurie","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Félicitations, ta tarte est délicieuse !"}]
execute if entity @s[tag=fe23_quete_tarte_pommes_2] run data remove block -1647 107 -426 Items
execute if entity @s[tag=fe23_quete_tarte_pommes_2] run give @s pumpkin_pie{display:{Name:'{"text":"Tarte aux pommes","color":"#e7b985","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une bonne tarte aux pommes,","color":"gray","italic":false}','{"text":"préparée façon grand-mère.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_tarte_pommes"]} 1
execute if entity @s[tag=fe23_quete_tarte_pommes_2] run advancement grant @s only festin_estival:deblocage/tarte_pommes
execute if entity @s[tag=fe23_quete_tarte_pommes_2] run tag @s add fe23_quete_tarte_pommes_3
execute if entity @s[tag=fe23_quete_tarte_pommes_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Génial ! Par contre, y a un truc qui me chiffonne... Pourquoi fallait-il ramener des planches de chêne ?"}]
execute if entity @s[tag=fe23_quete_tarte_pommes_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Patrick Seurie","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oh, aucun rapport avec la tarte ! Y a une fuite à l'étage, et je dois réparer le plancher..."}]
execute if entity @s[tag=fe23_quete_tarte_pommes_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Patrick Seurie","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bref, tu t'en es bien sorti... contrairement à Tom, qui aurait bien besoin d'un peu d'aide... Tu pourrais jeter un oeil ?"}]
execute if entity @s[tag=fe23_quete_tarte_pommes_2] run return 0

execute if entity @s[tag=fe23_quete_tarte_pommes] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Patrick Seurie","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Alors, tu viens pour le cours de cuisine ? Aujourd'hui, finie la théorie, on passe à la pratique ! L'objectif, faire une tarte aux pommes."}]
execute if entity @s[tag=fe23_quete_tarte_pommes] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Patrick Seurie","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Place-toi devant l'emplacement libre et ajoute les ingrédients de la tarte aux pommes dans le bon ordre. Reviens me voir quand tu penses avoir réussi !"}]
execute if entity @s[tag=fe23_quete_tarte_pommes] run tag @s add fe23_quete_tarte_pommes_2