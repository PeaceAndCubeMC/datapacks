execute if entity @s[tag=fe23_quete_jambon_beurre] if entity @s[nbt=!{Inventory:[{id:"minecraft:emerald",Count:16b}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Bernard Naqueur","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Si tu me rapportes 16 émeraudes, je te donnerai tout ce que je sais sur le coupable !"}]
execute if entity @s[tag=fe23_quete_jambon_beurre] if entity @s[nbt={Inventory:[{id:"minecraft:emerald",Count:16b}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Bernard Naqueur","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Eh bien, puisque tu es intéressé... Tout ce que je sais, c'est que je ne sais absolument rien sur le coupable ! Merci pour les émeraudes."}]
execute if entity @s[tag=fe23_quete_jambon_beurre] if entity @s[nbt={Inventory:[{id:"minecraft:emerald",Count:16b}]}] run clear @s emerald 16
execute if entity @s[tag=fe23_quete_jambon_beurre] run return 0

execute if entity @s[advancements={festin_estival:deblocage/riz=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Bernard Naqueur","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oyez oyez ! Ne l'écoutez pas, aucune arnaque ici !"}]

execute if entity @s[tag=fe23_quete_riz] if entity @s[nbt=!{Inventory:[{id:"minecraft:emerald",Count:10b}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Bernard Naqueur","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" 10 émeraudes seulement ! Ni plus, ni moins !"}]
execute if entity @s[tag=fe23_quete_riz] if entity @s[nbt=!{Inventory:[{id:"minecraft:emerald",Count:10b}]}] run return 0

execute if entity @s[tag=fe23_quete_riz] if entity @s[nbt={Inventory:[{id:"minecraft:emerald",Count:10b}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Bernard Naqueur","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Voici pour vous ! Regardez vous autres, prenez exemple !"}]
execute if entity @s[tag=fe23_quete_riz] if entity @s[nbt={Inventory:[{id:"minecraft:emerald",Count:10b}]}] run clear @s minecraft:emerald 10
execute if entity @s[tag=fe23_quete_riz] run give @s pumpkin_seeds{display:{Name:'{"text":"Riz","color":"#FAF5EF","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une céréale de base dans","color":"gray","italic":false}','{"text":"l\'alimentation de nombreuses","color":"gray","italic":false}','{"text":"régions du monde.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_riz"]} 1
execute if entity @s[tag=fe23_quete_riz] run advancement grant @s only festin_estival:deblocage/riz
execute if entity @s[tag=fe23_quete_riz] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Marie Basmati","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Quelle arnaque ! Ça fait des générations qu'on cultive du riz dans cette ville ! Il suffit d'aller voir dans la zone agricole !"}]
execute if entity @s[tag=fe23_quete_riz] run tag @s remove fe23_quete_riz

execute unless entity @s[tag=fe23_quete_riz] if entity @s[advancements={festin_estival:deblocage/riz=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Bernard Naqueur","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oyez oyez ! Mesdames, messieurs ! Venez découvrir la nouvelle céréale révolutionnaire ! 10 émeraudes seulement !"}]
execute unless entity @s[tag=fe23_quete_riz] if entity @s[advancements={festin_estival:deblocage/riz=false}] run tag @s add fe23_quete_riz