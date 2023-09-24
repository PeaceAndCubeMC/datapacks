execute if entity @s[tag=fe23_quete_chocolat_blanc_2] if entity @s[tag=fe23_quete_chocolat_blanc_3] run return -1

execute if entity @s[tag=fe23_quete_chocolat_blanc_2] if entity @s[nbt=!{Inventory:[{id:"minecraft:potion",tag:{Tags:["fe23_bouteille_lait"]}},{id:"minecraft:sugar"}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Mathy Hergrass","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Hum, comment faire un nouveau type de chocolat... J'ai une idée originale, mais j'aurais besoin d'une bouteille de lait et de sucre."}]

execute if entity @s[tag=fe23_quete_chocolat_blanc_2] if entity @s[nbt={Inventory:[{id:"minecraft:potion",tag:{Tags:["fe23_bouteille_lait"]}},{id:"minecraft:sugar"}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Mathy Hergrass","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Niquel ! Tu penses quoi de ce chocolat ? Je pense que Erica Ramel sera ravie."}]
execute if entity @s[tag=fe23_quete_chocolat_blanc_2] if entity @s[nbt={Inventory:[{id:"minecraft:potion",tag:{Tags:["fe23_bouteille_lait"]}},{id:"minecraft:sugar"}]}] run tag @s add fe23_quete_chocolat_blanc_3
execute if entity @s[tag=fe23_quete_chocolat_blanc_2] if entity @s[tag=fe23_quete_chocolat_blanc_3] run clear @s potion{Tags:["fe23_bouteille_lait"]} 1
execute if entity @s[tag=fe23_quete_chocolat_blanc_2] if entity @s[tag=fe23_quete_chocolat_blanc_3] run clear @s sugar 1
execute if entity @s[tag=fe23_quete_chocolat_blanc_2] if entity @s[tag=fe23_quete_chocolat_blanc_3] run give @s cookie{display:{Name:'{"text":"Chocolat blanc","color":"#ede6d6","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Un chocolat gras et sucré de","color":"gray","italic":false}','{"text":"couleur blanche, inventé dans","color":"gray","italic":false}','{"text":"les années 1930.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7232,Tags:["fe23_chocolat_blanc"]} 1

execute if entity @s[tag=fe23_quete_chocolat_blanc_2] run return 0

execute unless entity @s[advancements={festin_estival:deblocage/bouteille_lait=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Cet homme semble inquiet. Je repasserai plus tard pour voir si tout va bien.","italic":true}]
execute unless entity @s[advancements={festin_estival:deblocage/bouteille_lait=true}] run return -1

execute if entity @s[advancements={festin_estival:deblocage/beurre=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Mathy Hergrass","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Une vache à beurre, qui l'aurait cru ! Mon cousin ne me croira jamais !"}]
execute if entity @s[advancements={festin_estival:deblocage/beurre=true}] run return 0

execute if entity @s[tag=fe23_quete_beurre] unless entity @s[tag=fe23_quete_beurre_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Mathy Hergrass","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Tu as retrouvé ma vache ? Mon collègue Bradley Tier est déjà sur place près de la mine."}]
execute if entity @s[tag=fe23_quete_beurre] unless entity @s[tag=fe23_quete_beurre_3] run return 0

execute if entity @s[tag=fe23_quete_beurre] if entity @s[tag=fe23_quete_beurre_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Mathy Hergrass","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" C'est toi qui m'as aidé, merci beaucoup ! Mon collègue m'a raconté comment tu as fait descendre ma vache de cette falaise, et ça l'a totalement chamboulée ! Avec toutes ces secousses, elle s'est transformée en vache à beurre !"}]
execute if entity @s[tag=fe23_quete_beurre] if entity @s[tag=fe23_quete_beurre_3] run advancement grant @s only festin_estival:deblocage/beurre
execute if entity @s[tag=fe23_quete_beurre] if entity @s[tag=fe23_quete_beurre_3] run tag @s remove fe23_quete_beurre
execute if entity @s[tag=fe23_quete_beurre_3] run tag @s remove fe23_quete_beurre_2
execute if entity @s[tag=fe23_quete_beurre_3] run tag @s remove fe23_quete_beurre_3

execute unless entity @s[tag=fe23_quete_beurre] if entity @s[advancements={festin_estival:deblocage/beurre=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Mathy Hergrass","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" S'il te plaît, aide-moi ! J'ai perdu une vache en ramenant un troupeau depuis le village voisin... Elle s'est égarée sur le chemin de la mine. Aide-moi à la retrouver, un de mes collègues est déjà sur place."}]
execute unless entity @s[tag=fe23_quete_beurre] if entity @s[advancements={festin_estival:deblocage/beurre=false}] run tag @s add fe23_quete_beurre