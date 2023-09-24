execute if entity @s[advancements={festin_estival:deblocage/moule=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Théo","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Beurk !"}]

execute if entity @s[tag=fe23_quete_moule] if entity @s[nbt=!{Inventory:[{tag:{Tags:["fe23_ballon"]}}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Théo","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ze veux mon ballon !"}]

execute if entity @s[tag=fe23_quete_moule] if entity @s[nbt={Inventory:[{tag:{Tags:["fe23_ballon"]}}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Théo","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Trop cool, t'as trouvé mon ballon ! Mais... beurk ! C'est dégueu, ze l'veux plus."}]
execute if entity @s[tag=fe23_quete_moule] if entity @s[nbt={Inventory:[{tag:{Tags:["fe23_ballon"]}}]}] run advancement grant @s only festin_estival:deblocage/moule
execute if entity @s[tag=fe23_quete_moule] if entity @s[nbt={Inventory:[{tag:{Tags:["fe23_ballon"]}}]}] run tag @s remove fe23_quete_moule

execute unless entity @s[tag=fe23_quete_moule] if entity @s[advancements={festin_estival:deblocage/moule=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Théo","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" B'jour ! Tu peux m'aider steuplait ? Z'ai fait tomber mon ballon dans l'eau..."}]
execute unless entity @s[tag=fe23_quete_moule] if entity @s[advancements={festin_estival:deblocage/moule=false}] run tag @s add fe23_quete_moule