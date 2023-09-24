execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 9 run tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Jennifer Mière","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ce n'est pas la bonne réponse !"}]
execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 10 run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Jennifer Mière","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" C'est la bonne réponse ! Va voir Ivor Jeuron."}]
execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 8..9 run function festin_estival:quetes/quete_hamburger_question_5
execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 8..10 run return 0

execute if entity @s[tag=fe23_quete_farine] if entity @s[nbt=!{Inventory:[{id:"minecraft:wheat"}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Jennifer Mière","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Il faut du blé pour faire de la farine !"}]

execute if entity @s[tag=fe23_quete_farine] if entity @s[nbt={Inventory:[{id:"minecraft:wheat"}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Jennifer Mière","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ah super ! Tu as rapporté du blé."}]
execute if entity @s[tag=fe23_quete_farine] if entity @s[nbt={Inventory:[{id:"minecraft:wheat"}]}] run advancement grant @s only festin_estival:deblocage/farine
execute if entity @s[tag=fe23_quete_farine] if entity @s[nbt={Inventory:[{id:"minecraft:wheat"}]}] run tag @s remove fe23_quete_farine

execute if entity @s[advancements={festin_estival:deblocage/farine=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Jennifer Mière","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Pour faire de la farine, il suffit de mettre le blé dans la machine, et d'appuyer sur le bouton pour l'écraser. Tu peux même en faire plusieurs en même temps !"}]

execute unless entity @s[tag=fe23_quete_farine] if entity @s[advancements={festin_estival:deblocage/farine=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Jennifer Mière","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Salut toi ! Si tu me rapportes du blé, je peux t'expliquer comment faire de la farine."}]
execute unless entity @s[tag=fe23_quete_farine] if entity @s[advancements={festin_estival:deblocage/farine=false}] run tag @s add fe23_quete_farine