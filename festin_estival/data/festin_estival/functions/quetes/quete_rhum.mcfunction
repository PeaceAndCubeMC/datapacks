execute if entity @s[advancements={festin_estival:deblocage/rhum=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Cindy Stiller","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" L'alcool est à consommer avec modération !"}]

execute if entity @s[tag=fe23_quete_rhum_5] if entity @s[nbt={Inventory:[{id:"minecraft:sugar_cane",tag:{Tags:["fe23_quete_rhum"]}}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Cindy Stiller","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Merci pour la canne à sucre ! Comme promis, voici la recette du rhum !"}]
execute if entity @s[tag=fe23_quete_rhum_5] if entity @s[nbt={Inventory:[{id:"minecraft:sugar_cane",tag:{Tags:["fe23_quete_rhum"]}}]}] run advancement grant @s only festin_estival:deblocage/rhum
execute if entity @s[tag=fe23_quete_rhum_5] if entity @s[nbt={Inventory:[{id:"minecraft:sugar_cane",tag:{Tags:["fe23_quete_rhum"]}}]}] run clear @s sugar_cane{Tags:["fe23_quete_rhum"]} 1
execute if entity @s[tag=fe23_quete_rhum_5] if entity @s[advancements={festin_estival:deblocage/rhum=true}] run tag @s remove fe23_quete_rhum_5

execute if entity @s[tag=fe23_quete_rhum_4] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Cindy Stiller","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Philippe Hiochenfer est un ami ! Tiens, rapportes-lui cette bière."}]
execute if entity @s[tag=fe23_quete_rhum_4] run give @s potion{display:{Name:'{"text":"Bière","color":"#F28E1C","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une boisson alcoolisée et","color":"gray","italic":false}','{"text":"rafraîchissante, particulièrement","color":"gray","italic":false}','{"text":"populaire chez nos amis belges.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},HideFlags:32,CustomModelData:7234,Tags:["fe23_biere","fe23_quete_rhum"],CustomPotionEffects:[{Id:2,Amplifier:1b,Duration:200,ShowParticles:0b},{Id:8,Amplifier:2b,Duration:200,ShowParticles:0b},{Id:23,Amplifier:2b,Duration:20,ShowParticles:0b}],CustomPotionColor:15896092} 1
execute if entity @s[tag=fe23_quete_rhum_4] run tag @s add fe23_quete_rhum_5
execute if entity @s[tag=fe23_quete_rhum_4] run tag @s remove fe23_quete_rhum_4
execute if entity @s[tag=fe23_quete_rhum_5] run return 0

execute if entity @s[tag=fe23_quete_rhum] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Cindy Stiller","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Va voir Céleste Ulipe pour récupérer de la canne à sucre !"}]
execute if entity @s[tag=fe23_quete_rhum] run return 0

execute unless entity @s[tag=fe23_quete_rhum] if entity @s[advancements={festin_estival:deblocage/rhum=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Cindy Stiller","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Salut ! Si tu vas me chercher de la canne à sucre auprès de Céleste Ulipe, je te montrerai une recette !"}]
execute unless entity @s[tag=fe23_quete_rhum] if entity @s[advancements={festin_estival:deblocage/rhum=false}] run tag @s add fe23_quete_rhum