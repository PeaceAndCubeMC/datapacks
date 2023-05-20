execute if score @s hallo_jauge_vert < vert_6 hallo_palier_valeur run tellraw @s ["",{"text":"Techno-chercheur","bold":true,"color":"green"},{"text":":","color":"gray"},{"text":" Tu as déjà déposé ","color":"#699FA2"},{"score":{"name":"@s","objective":"hallo_jauge_vert"},"bold":true,"color":"yellow"},{"text":" minerais verts ","color":"#699FA2"},{"text":"\u25a0","color":"green"},{"text":". Dépose en ","color":"#699FA2"},{"score":{"name":"vert_6","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":" pour recevoir ta prochaine récompense !","color":"#699FA2"}]

execute if data entity @s SelectedItem if score @s hallo_jauge_vert >= vert_6 hallo_palier_valeur run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"green"},{"text":":","color":"gray","bold":false},{"text":" J'ai quelque chose à te donner, vide ta main et reviens me voir !","color":"#699FA2","bold":false}]


execute unless data entity @s SelectedItem if score @s hallo_jauge_vert >= vert_6 hallo_palier_valeur run scoreboard players set @s hallo_gift_vert 6

execute unless data entity @s SelectedItem if score @s hallo_jauge_vert >= vert_6 hallo_palier_valeur run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"green"},{"text":":","color":"gray","bold":false},{"text":" Tiens, voilà un cadeau pour te remercier d'avoir déposé ","color":"#699FA2","bold":false},{"score":{"name":"vert_6","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":" minerais verts ","color":"#699FA2","bold":false},{"text":"\u25a0","color":"green","bold":false},{"text":" !","color":"#699FA2","bold":false}]
execute unless data entity @s SelectedItem if score @s hallo_jauge_vert >= vert_6 hallo_palier_valeur run give @s netherite_pickaxe{display:{Name:'{"text":"Nature Morte","color":"green","bold":true,"italic":false}',Lore:['{"text":" "}','[{"text":"Délicatesse florale","color":"#8DAA83","italic":false},{"text":" (Toucher de Soie)","color":"#6B6B6B"}]','{"text":"Efficacité V","color":"gray","italic":false}','{"text":"Fléau des arthropodes V","color":"gray","italic":false}','{"text":"Solidité V","color":"gray","italic":false}','{"text":"Chute amortie V","color":"gray","italic":false}','{"text":"Butin III","color":"gray","italic":false}','{"text":"Raccommodage","color":"gray","italic":false}','{"text":" "}','{"text":"Son manche continue de pousser.","color":"gray","bold":false,"italic":false}','{"text":" "}','[{"text":"■","color":"green","italic":false},{"text":" 22000 minerais verts déposés","color":"#7D7A69","italic":false}]','{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}']},HideFlags:1,Enchantments:[{id:"minecraft:feather_falling",lvl:5s},{id:"minecraft:bane_of_arthropods",lvl:5s},{id:"minecraft:looting",lvl:2s},{id:"minecraft:efficiency",lvl:5s},{id:"minecraft:silk_touch",lvl:3s},{id:"minecraft:unbreaking",lvl:5s},{id:"minecraft:mending",lvl:1s}]} 1
