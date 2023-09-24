execute if entity @s[tag=fe23_quete_jambon_beurre] if entity @s[nbt=!{Inventory:[{id:"minecraft:diamond"}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Philippe Hiochenfer","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Je n'ai rien vu du tout ! Mais si tu veux mon avis, le forgeron n'est pas innocent..."}]
execute if entity @s[tag=fe23_quete_jambon_beurre] if entity @s[nbt={Inventory:[{id:"minecraft:diamond"}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Philippe Hiochenfer","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bon... La vérité, c'est que quelqu'un s'est introduit dans la mine, mais je n'ai pas pu l'arrêter à temps... Tu peux aller voir si tu veux !"}]
execute if entity @s[tag=fe23_quete_jambon_beurre] if entity @s[nbt={Inventory:[{id:"minecraft:diamond"}]}] run clear @s diamond 1
execute if entity @s[tag=fe23_quete_jambon_beurre] run return 0

execute if entity @s[tag=fe23_quete_rhum_5] if entity @s[nbt={Inventory:[{id:"minecraft:potion",tag:{Tags:["fe23_quete_rhum"]}}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Philippe Hiochenfer","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Merci pour la bière ! Tiens, voici ton argile."}]
execute if entity @s[tag=fe23_quete_rhum_5] if entity @s[nbt={Inventory:[{id:"minecraft:potion",tag:{Tags:["fe23_quete_rhum"]}}]}] run give @s clay_ball{Tags:["fe23_quete_rhum"]} 1
execute if entity @s[tag=fe23_quete_rhum_5] if entity @s[nbt={Inventory:[{id:"minecraft:potion",tag:{Tags:["fe23_quete_rhum"]}}]}] run clear @s potion{Tags:["fe23_quete_rhum"]} 1
execute if entity @s[tag=fe23_quete_rhum_5] run return 0

execute if entity @s[tag=fe23_quete_rhum_4] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Philippe Hiochenfer","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Je veux bien que tu demandes une bière à Cindy Stiller..."}]

execute if entity @s[tag=fe23_quete_rhum_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Philippe Hiochenfer","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Je veux bien te donner un peu d'argile, mais une bière ne serait pas de refus... Demande à Cindy Stiller !"}]
execute if entity @s[tag=fe23_quete_rhum_3] run tag @s add fe23_quete_rhum_4
execute if entity @s[tag=fe23_quete_rhum_3] run tag @s remove fe23_quete_rhum_3
execute if entity @s[tag=fe23_quete_rhum_4] run return 0

tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Philippe Hiochenfer","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" C'est fatigant de miner..."}]