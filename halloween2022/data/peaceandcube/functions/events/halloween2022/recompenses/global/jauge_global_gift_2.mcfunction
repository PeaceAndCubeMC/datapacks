execute if score Total hallo_jauge_affichage < global_gift_2 hallo_palier_valeur run tellraw @s ["",{"text":"Récompense","bold":true,"color":"gold"},{"text":":","color":"gold"},{"text":" Un total de ","color":"#699FA2"},{"score":{"name":"global_gift_2","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":" minerais doit avoir été déposés avant de pouvoir récupérer cet objet.","color":"#699FA2"}]


execute if score @s hallo_gift_globale matches 2.. run tellraw @s [{"text":"Récompense","bold":true,"color":"gold"},{"text":":","color":"gold","bold":false},{"text":" Tu as déjà récupéré cet objet.","color":"#699FA2","bold":false}]

execute if score @s hallo_gift_globale matches 1 unless score @s hallo_gift_globale matches 2.. if score Total hallo_jauge_affichage >= global_gift_2 hallo_palier_valeur run tellraw @s [{"text":"Récompense","bold":true,"color":"gold"},{"text":":","color":"gold","bold":false},{"text":" Tu as obtenu un nouvel objet.","color":"#699FA2","bold":false}]
execute if score @s hallo_gift_globale matches 1 unless score @s hallo_gift_globale matches 2.. if score Total hallo_jauge_affichage >= global_gift_2 hallo_palier_valeur run give @s medium_amethyst_bud{display:{Name:'{"text":"Poing PaCméricains","color":"gold","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Pour des coups encore plus puissants.","color":"gray","bold":false,"italic":false}','{"text":" "}','{"text":"5000 minerais déposés","color":"#7D7A69","italic":false}','{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}']},Enchantments:[{id:"minecraft:sharpness",lvl:2s},{id:"minecraft:knockback",lvl:1s}]} 1
execute if score @s hallo_gift_globale matches 1 unless score @s hallo_gift_globale matches 2.. if score Total hallo_jauge_affichage >= global_gift_2 hallo_palier_valeur run scoreboard players set @s hallo_gift_globale 2