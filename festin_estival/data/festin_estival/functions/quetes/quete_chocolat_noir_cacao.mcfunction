execute if entity @s[tag=fe23_quete_chocolat_blanc] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Estève Decacao","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" J'aimerais bien aider Erica, mais je n'ai pas d'idée. Demande à Mathy Hergrass !"}]
execute if entity @s[tag=fe23_quete_chocolat_blanc] run tag @s add fe23_quete_chocolat_blanc_2
execute if entity @s[tag=fe23_quete_chocolat_blanc] run return 0

execute unless entity @s[tag=fe23_quete_chocolat_noir] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Estève Decacao","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" C'est ici qu'on récolte la moitié du cacao français !"}]

execute if entity @s[tag=fe23_quete_chocolat_noir] if entity @s[nbt=!{Inventory:[{id:"minecraft:bucket",Count:8b}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Estève Decacao","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Tu souhaites du cacao pour l'apporter au stand de chocolat ? Pas de problème, mais tu dois d'abord m'apporter "},{"text":"8","bold":true,"color":"aqua"},{"text":" seaux vides."}]

execute if entity @s[tag=fe23_quete_chocolat_noir] if entity @s[nbt={Inventory:[{id:"minecraft:bucket",Count:8b}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Estève Decacao","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Déjà ? Merci, voici un peu de cacao !"}]
execute if entity @s[tag=fe23_quete_chocolat_noir] if entity @s[nbt={Inventory:[{id:"minecraft:bucket",Count:8b}]}] run give @s cocoa_beans{Tags:["fe23_cacao"]} 1
execute if entity @s[tag=fe23_quete_chocolat_noir] if entity @s[nbt={Inventory:[{id:"minecraft:bucket",Count:8b}]}] run clear @s minecraft:bucket 8