execute if entity @s[tag=fe23_quete_rhum_5] if entity @s[nbt={Inventory:[{id:"minecraft:clay_ball",tag:{Tags:["fe23_quete_rhum"]}}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Sophia Regile","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oh, tu as rapporté l'argile ? Parfait, prends un pot de fleurs."}]
execute if entity @s[tag=fe23_quete_rhum_5] if entity @s[nbt={Inventory:[{id:"minecraft:clay_ball",tag:{Tags:["fe23_quete_rhum"]}}]}] run give @s flower_pot{Tags:["fe23_quete_rhum"]} 1
execute if entity @s[tag=fe23_quete_rhum_5] if entity @s[nbt={Inventory:[{id:"minecraft:clay_ball",tag:{Tags:["fe23_quete_rhum"]}}]}] run clear @s clay_ball{Tags:["fe23_quete_rhum"]} 1
execute if entity @s[tag=fe23_quete_rhum_5] run return 0

execute if entity @s[tag=fe23_quete_rhum_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Sophia Regile","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Va récupérer de l'argile auprès de Philippe Hiochenfer !"}]

execute if entity @s[tag=fe23_quete_rhum_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Sophia Regile","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Je vois que Céleste Ulipe a besoin d'un pot de fleurs... Si tu vas récupérer de l'argile auprès de Philippe Hiochenfer, je t'en donnerai un !"}]
execute if entity @s[tag=fe23_quete_rhum_2] run tag @s add fe23_quete_rhum_3
execute if entity @s[tag=fe23_quete_rhum_2] run tag @s remove fe23_quete_rhum_2
execute if entity @s[tag=fe23_quete_rhum_3] run return 0

tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Sophia Regile","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" La reine des pots est ici, venez admirer les meilleurs pots de la ville !"}]