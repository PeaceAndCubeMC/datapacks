execute if entity @s[tag=fe23_quete_jambon_beurre] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Enrico Quille","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" De ce qu'on dit, Philippe aime beaucoup les pierres précieuses de couleur bleue... De là à dire qu'on a acheté son silence, il n'y a qu'un pas que je ne franchirai pas ! Ah, tu devrais aller voir le petit couple dans le belvédère, c'est étrange ces nouveaux arrivants..."}]
execute if entity @s[tag=fe23_quete_jambon_beurre] run return 0

execute if entity @s[tag=fe23_quete_mousse_chocolat_3] if entity @s[tag=fe23_quete_mousse_chocolat_4] run return -1

execute if entity @s[tag=fe23_quete_mousse_chocolat_3] if entity @s[nbt=!{Inventory:[{id:"minecraft:cookie",tag:{Tags:["fe23_chocolat_noir"]}},{id:"minecraft:cookie",tag:{Tags:["fe23_chocolat_lait"]}},{id:"minecraft:cookie",tag:{Tags:["fe23_chocolat_blanc"]}}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Enrico Quille","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" J'ai bien un dessert en tête, mais j'ai besoin que tu me rapportes chacun des trois chocolats pour essayer la recette !"}]

execute if entity @s[tag=fe23_quete_mousse_chocolat_3] if entity @s[nbt={Inventory:[{id:"minecraft:cookie",tag:{Tags:["fe23_chocolat_noir"]}},{id:"minecraft:cookie",tag:{Tags:["fe23_chocolat_lait"]}},{id:"minecraft:cookie",tag:{Tags:["fe23_chocolat_blanc"]}}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Enrico Quille","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Et voilà ! Alors, ça te met en appétit ? Va le montrer à Manu Tella !"}]
execute if entity @s[tag=fe23_quete_mousse_chocolat_3] if entity @s[nbt={Inventory:[{id:"minecraft:cookie",tag:{Tags:["fe23_chocolat_noir"]}},{id:"minecraft:cookie",tag:{Tags:["fe23_chocolat_lait"]}},{id:"minecraft:cookie",tag:{Tags:["fe23_chocolat_blanc"]}}]}] run tag @s add fe23_quete_mousse_chocolat_4
execute if entity @s[tag=fe23_quete_mousse_chocolat_3] if entity @s[tag=fe23_quete_mousse_chocolat_4] run clear @s cookie{Tags:["fe23_chocolat_noir"]} 1
execute if entity @s[tag=fe23_quete_mousse_chocolat_3] if entity @s[tag=fe23_quete_mousse_chocolat_4] run clear @s cookie{Tags:["fe23_chocolat_lait"]} 1
execute if entity @s[tag=fe23_quete_mousse_chocolat_3] if entity @s[tag=fe23_quete_mousse_chocolat_4] run clear @s cookie{Tags:["fe23_chocolat_blanc"]} 1
execute if entity @s[tag=fe23_quete_mousse_chocolat_3] if entity @s[tag=fe23_quete_mousse_chocolat_4] run give @s mushroom_stew{display:{Name:'{"text":"Mousse aux trois chocolats","color":"#84563C","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Un dessert délicieux fait à partir","color":"gray","italic":false}','{"text":"de chocolat et de blanc d\'oeuf monté","color":"gray","italic":false}','{"text":"en neige.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_mousse_chocolat"]} 1

execute if entity @s[tag=fe23_quete_mousse_chocolat_3] run return 0

execute if entity @s[advancements={festin_estival:deblocage/omelette=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Enrico Quille","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Faut vraiment que j'apprenne à gérer mes poules..."}]
execute if entity @s[advancements={festin_estival:deblocage/omelette=true}] run return 0

execute at @s if entity @e[type=player,tag=fe23_quete_omelette,distance=1..] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Enrico Quille","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oh, excuse-moi, je suis occupé pour le moment. Repasse plus tard !"}]
execute at @s if entity @e[type=player,tag=fe23_quete_omelette,distance=1..] run return 0

execute if entity @s[tag=fe23_quete_omelette] if entity @s[advancements={festin_estival:quetes/omelette=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Enrico Quille","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ma poule a sûrement du emprunté un de ces deux chemins... Pense à prendre une longue-vue !"}]

execute if entity @s[tag=fe23_quete_omelette] if entity @s[advancements={festin_estival:quetes/omelette=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Enrico Quille","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Je vois que tu as retrouvé ma poule, merci ! Voici une façon de cuisiner des oeufs."}]
execute if entity @s[tag=fe23_quete_omelette] if entity @s[advancements={festin_estival:quetes/omelette=true}] run advancement grant @s only festin_estival:deblocage/omelette
execute if entity @s[tag=fe23_quete_omelette] if entity @s[advancements={festin_estival:quetes/omelette=true}] run tag @s remove fe23_quete_omelette

execute unless entity @s[tag=fe23_quete_omelette] if entity @s[advancements={festin_estival:deblocage/omelette=false}] if entity @s[advancements={peaceandcube:events/paques_2023=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Enrico Quille","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oh bah ça alors, encore toi ! Je sais que tu m'as déjà aidé y a quelques mois, mais j'ai perdu une poule pas très loin d'ici. Pourrais-tu la chercher ? Je te conseille d'utiliser une longue-vue."}]
execute unless entity @s[tag=fe23_quete_omelette] if entity @s[advancements={festin_estival:deblocage/omelette=false}] if entity @s[advancements={peaceandcube:events/paques_2023=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Enrico Quille","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bonjour ! Désolé de te déranger, mais j'ai perdu une poule pas très loin d'ici. Pourrais-tu la chercher ? Je te conseille d'utiliser une longue-vue."}]
execute unless entity @s[tag=fe23_quete_omelette] if entity @s[advancements={festin_estival:deblocage/omelette=false}] run tag @s add fe23_quete_omelette