execute if entity @s[tag=fe23_quete_mousse_chocolat_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Éric Huisine","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Une idée de dessert ? Va plutôt voir Enrico Quille, c'est un ami."}]
execute if entity @s[tag=fe23_quete_mousse_chocolat_2] run tag @s add fe23_quete_mousse_chocolat_3
execute if entity @s[tag=fe23_quete_mousse_chocolat_2] run return 0

execute unless entity @s[tag=fe23_quete_pain_raisins] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Éric Huisine","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" La plupart des stations de craft se trouvent ici, dans les halles. Elles permettent de fabriquer des aliments à partir des recettes que tu as débloquées.\n Si une station est occupée, attends patiemment ton tour !"}]

execute if entity @s[tag=fe23_quete_pain_raisins] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Éric Huisine","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Si tu souhaites assister au deuxième cours de cuisine, prends cette liste d'ingrédients. Récupère-les avant de pouvoir entrer dans la cuisine !"}]
execute if entity @s[tag=fe23_quete_pain_raisins] run give @s paper{display:{Name:'{"text":"Ingrédients du 2ème cours de cuisine","color":"#E7B985","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"La liste des ingrédients demandés","color":"gray","italic":false}','{"text":"pour le deuxième cours de cuisine","color":"gray","italic":false}','{"text":"du boulanger.","color":"gray","italic":false}','{"text":" ","color":"gray","italic":false}','{"text":"⇒ Raisin","color":"white","italic":false}','{"text":"⇒ Farine","color":"white","italic":false}','{"text":"⇒ Chocolat noir","color":"white","italic":false}','{"text":"⇒ Sucre","color":"white","italic":false}','{"text":"⇒ Oeuf","color":"white","italic":false}','{"text":"⇒ Beurre","color":"white","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},Tags:["fe23_liste_ingredients_2"]} 1
execute if entity @s[tag=fe23_quete_pain_raisins] run tag @s add fe23_quete_pain_raisins_2
execute if entity @s[tag=fe23_quete_pain_raisins] run tag @s remove fe23_quete_pain_raisins