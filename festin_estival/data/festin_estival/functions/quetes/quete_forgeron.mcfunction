execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 11 run tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Ivor Jeuron","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ce n'est pas la bonne réponse !"}]
execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 12 run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Ivor Jeuron","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" C'est la bonne réponse ! Va voir Donald Heumaingauche."}]
execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 10..11 run function festin_estival:quetes/quete_hamburger_question_6
execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 10..12 run return 0

execute if entity @s[tag=fe23_quete_jambon_beurre] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Ivor Jeuron","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" En effet, je n'ai pas passé la nuit chez moi... Mais je n'y suis pour rien, j'étais chez Céleste Ulipe !"}]
execute if entity @s[tag=fe23_quete_jambon_beurre] run return 0

execute if entity @s[advancements={festin_estival:deblocage/mais=false,festin_estival:deblocage/houblon=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Je n'ai rien à faire ici pour le moment...","italic":true}]
execute if entity @s[advancements={festin_estival:deblocage/mais=false,festin_estival:deblocage/houblon=false}] run return -1

execute unless score @s fe23_forgeron matches 0.. run scoreboard players set @s fe23_forgeron 0
execute unless score @s fe23_forgeron_trigger matches 0.. run scoreboard players set @s fe23_forgeron_trigger 0

execute if score @s fe23_forgeron matches 1.. unless entity @s[tag=fe23_quete_forgeron] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Ivor Jeuron","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Je t'ai pas déjà vu aujourd'hui ? Reviens me voir lorsque la cloche sonnera midi !"}]
execute if score @s fe23_forgeron matches 1.. unless entity @s[tag=fe23_quete_forgeron] run return -1

# Give de la faux à maïs
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron_trigger matches 1 run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Ivor Jeuron","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" La faux à maïs ? Très bon choix !"}]
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron_trigger matches 1 run give @s golden_hoe{display:{Name:'{"text":"Faux à maïs","color":"#FBEC5D","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Cet outil permet de récolter du maïs","color":"gray","italic":false}','{"text":"à la place du blé.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7231,Tags:["fe23_faux_mais"],Enchantments:[{id:"minecraft:unbreaking",lvl:10s}]} 1

# Give de la faux à houblon
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron_trigger matches 2 run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Ivor Jeuron","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" La faux à houblon ? Très bon choix !"}]
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron_trigger matches 2 run give @s golden_hoe{display:{Name:'{"text":"Faux à houblon","color":"#CFDD7B","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Cet outil permet de récolter du houblon","color":"gray","italic":false}','{"text":"à la place du blé.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_faux_houblon"],Enchantments:[{id:"minecraft:unbreaking",lvl:10s}]} 1

# Give du sécateur à vendange
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron_trigger matches 3 run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Ivor Jeuron","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Le sécateur à vendange ? Très bon choix !"}]
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron_trigger matches 3 run give @s shears{display:{Name:'{"text":"Sécateur à vendange","color":"#A041F2","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Cet outil permet de récolter du","color":"gray","italic":false}','{"text":"raisin à la place des feuilles","color":"gray","italic":false}','{"text":"d\'azalée.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},Tags:["fe23_secateur_vendange"],Enchantments:[{id:"minecraft:unbreaking",lvl:10s}]} 1

# Give du cueilloir à vanille
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron_trigger matches 4 run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Ivor Jeuron","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Le cueilloir à vanille ? Très bon choix !"}]
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron_trigger matches 4 run give @s shears{display:{Name:'{"text":"Cueilloir à vanille","color":"#F3E5AB","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Cet outil permet de récolter de","color":"gray","italic":false}','{"text":"la vanille à la place des grandes","color":"gray","italic":false}','{"text":"fougères.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},Tags:["fe23_cueilloir_vanille"],Enchantments:[{id:"minecraft:unbreaking",lvl:10s}]} 1

# Give du sécateur à menthe
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron_trigger matches 5 run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Ivor Jeuron","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Le sécateur à menthe ? Très bon choix !"}]
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron_trigger matches 5 run give @s shears{display:{Name:'{"text":"Sécateur à menthe","color":"#3EB489","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Cet outil permet de récolter de","color":"gray","italic":false}','{"text":"la menthe à la place des grandes","color":"gray","italic":false}','{"text":"fougères.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},Tags:["fe23_secateur_menthe"],Enchantments:[{id:"minecraft:unbreaking",lvl:10s}]} 1

execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron_trigger matches 1.. run tag @s remove fe23_quete_forgeron
execute if score @s fe23_forgeron_trigger matches 1.. run scoreboard players set @s fe23_forgeron_trigger 0

execute if entity @s[tag=fe23_quete_forgeron] unless score @s fe23_forgeron matches 1.. if entity @s[nbt=!{Inventory:[{id:"minecraft:iron_ingot",Count:5b},{id:"minecraft:stick",Count:6b},{id:"minecraft:charcoal",Count:3b},{id:"minecraft:potion",tag:{Tags:["fe23_huile_tournesol"]}}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Ivor Jeuron","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Pour choisir un nouvel outil, rapporte-moi "},{"text":"5","bold":true,"color":"aqua"},{"text":" lingots de fer, "},{"text":"6","bold":true,"color":"aqua"},{"text":" bâtons, "},{"text":"3","bold":true,"color":"aqua"},{"text":" charbons de bois et "},{"text":"1","bold":true,"color":"aqua"},{"text":" huile de tournesol. Les quantités doivent être exactes !"}]

execute if entity @s[tag=fe23_quete_forgeron] if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",Count:5b},{id:"minecraft:stick",Count:6b},{id:"minecraft:charcoal",Count:3b},{id:"minecraft:potion",tag:{Tags:["fe23_huile_tournesol"]}}]}] run scoreboard players set @s fe23_forgeron 1
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron matches 1.. run clear @s minecraft:iron_ingot 5
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron matches 1.. run clear @s minecraft:stick 6
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron matches 1.. run clear @s minecraft:charcoal 3
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron matches 1.. run clear @s minecraft:potion{Tags:["fe23_huile_tournesol"]} 1

execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron matches 1.. run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Ivor Jeuron","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Parfait ! Quel outil souhaites-tu avoir ?"}]
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron matches 1.. if entity @s[advancements={festin_estival:deblocage/mais=true}] run tellraw @s ["",{"text":" [Faux à maïs] ","bold":true,"color":"#FBEC5D","clickEvent":{"action":"run_command","value":"/trigger fe23_forgeron_trigger set 1"}}]
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron matches 1.. if entity @s[advancements={festin_estival:deblocage/houblon=true}] run tellraw @s ["",{"text":" [Faux à houblon] ","bold":true,"color":"#CFDD7B","clickEvent":{"action":"run_command","value":"/trigger fe23_forgeron_trigger set 2"}}]
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron matches 1.. if entity @s[advancements={festin_estival:deblocage/raisin=true}] run tellraw @s ["",{"text":" [Sécateur à vendange] ","bold":true,"color":"#A041F2","clickEvent":{"action":"run_command","value":"/trigger fe23_forgeron_trigger set 3"}}]
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron matches 1.. if entity @s[advancements={festin_estival:deblocage/vanille=true}] run tellraw @s ["",{"text":" [Cueilloir à vanille] ","bold":true,"color":"#F3E5AB","clickEvent":{"action":"run_command","value":"/trigger fe23_forgeron_trigger set 4"}}]
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron matches 1.. if entity @s[advancements={festin_estival:deblocage/menthe=true}] run tellraw @s ["",{"text":" [Sécateur à menthe] ","bold":true,"color":"#3EB489","clickEvent":{"action":"run_command","value":"/trigger fe23_forgeron_trigger set 5"}}]
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron matches 1.. run tellraw @s ["",{"text":" Clique sur le choix souhaité, puis reparle au forgeron","italic":true}]
execute if entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron matches 1.. run scoreboard players enable @s fe23_forgeron_trigger

execute unless entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron matches 0 run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Ivor Jeuron","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bonjour "},{"selector":"@s","color":"white"},{"text":" ! Si tu souhaites un outil du festin estival, tu es au bon endroit ! Rapporte-moi "},{"text":"5","bold":true,"color":"aqua"},{"text":" lingots de fer, "},{"text":"6","bold":true,"color":"aqua"},{"text":" bâtons, "},{"text":"3","bold":true,"color":"aqua"},{"text":" charbons de bois et "},{"text":"1","bold":true,"color":"aqua"},{"text":" huile de tournesol pour choisir un nouvel outil."}]
execute unless entity @s[tag=fe23_quete_forgeron] if score @s fe23_forgeron matches 0 run tag @s add fe23_quete_forgeron