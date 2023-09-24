execute if entity @s[tag=fe23_quete_chocolat_lait_2] if entity @s[tag=fe23_quete_chocolat_lait_3] run return -1

execute if entity @s[tag=fe23_quete_chocolat_lait_2] if entity @s[nbt=!{Inventory:[{id:"minecraft:cocoa_beans"},{id:"minecraft:sugar"}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Annabelle Actose","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" J'ai peut-être une idée pour un nouveau type de chocolat... Rapporte-moi du cacao et du sucre, je vais tenter quelque chose."}]

execute if entity @s[tag=fe23_quete_chocolat_lait_2] if entity @s[nbt={Inventory:[{id:"minecraft:cocoa_beans"},{id:"minecraft:sugar"}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Annabelle Actose","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Merci ! Voici un nouveau type de chocolat. Retourne voir Manu Tella pour lui montrer !"}]
execute if entity @s[tag=fe23_quete_chocolat_lait_2] if entity @s[nbt={Inventory:[{id:"minecraft:cocoa_beans"},{id:"minecraft:sugar"}]}] run tag @s add fe23_quete_chocolat_lait_3
execute if entity @s[tag=fe23_quete_chocolat_lait_2] if entity @s[tag=fe23_quete_chocolat_lait_3] run clear @s cocoa_beans 1
execute if entity @s[tag=fe23_quete_chocolat_lait_2] if entity @s[tag=fe23_quete_chocolat_lait_3] run clear @s sugar 1
execute if entity @s[tag=fe23_quete_chocolat_lait_2] if entity @s[tag=fe23_quete_chocolat_lait_3] run give @s cookie{display:{Name:'{"text":"Chocolat au lait","color":"#84563c","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Un chocolat composé de cacao, de","color":"gray","italic":false}','{"text":"lait et de sucre, très populaire","color":"gray","italic":false}','{"text":"à Pâques et à Noël.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7231,Tags:["fe23_chocolat_lait"]} 1

execute if entity @s[tag=fe23_quete_chocolat_lait_2] run return 0

execute if entity @s[tag=fe23_quete_bouteille_lait] if entity @s[nbt=!{Inventory:[{id:"minecraft:milk_bucket"}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Annabelle Actose","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Reviens me voir quand tu auras un seau de lait !"}]

execute if entity @s[tag=fe23_quete_bouteille_lait] if entity @s[nbt={Inventory:[{id:"minecraft:milk_bucket"}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Annabelle Actose","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ah, te revoilà ! Ouvre bien grand les oreilles."}]
execute if entity @s[tag=fe23_quete_bouteille_lait] if entity @s[nbt={Inventory:[{id:"minecraft:milk_bucket"}]}] run advancement grant @s only festin_estival:deblocage/bouteille_lait
execute if entity @s[tag=fe23_quete_bouteille_lait] if entity @s[nbt={Inventory:[{id:"minecraft:milk_bucket"}]}] run tag @s remove fe23_quete_bouteille_lait

execute if entity @s[advancements={festin_estival:deblocage/bouteille_lait=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Annabelle Actose","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Pour fabriquer des bouteilles de lait, il faut mettre un seau de lait et des fioles vides dans la conditionneuse, puis l'activer. Tu peux fabriquer jusqu'à 16 bouteilles de lait en même temps. Pense à mettre à jour ton guide des recettes pour t'aider !"}]

execute unless entity @s[tag=fe23_quete_bouteille_lait] if entity @s[advancements={festin_estival:deblocage/bouteille_lait=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Annabelle Actose","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bonjour, bienvenue dans l'entrepôt agricole ! Si tu me rapportes un seau de lait, je t'expliquerai comment conditionner le lait."}]
execute unless entity @s[tag=fe23_quete_bouteille_lait] if entity @s[advancements={festin_estival:deblocage/bouteille_lait=false}] run tag @s add fe23_quete_bouteille_lait