execute if score @s hallo_jauge_vert < vert_2 hallo_palier_valeur run tellraw @s ["",{"text":"Techno-chercheur","bold":true,"color":"green"},{"text":":","color":"gray"},{"text":" Tu as déjà déposé ","color":"#699FA2"},{"score":{"name":"@s","objective":"hallo_jauge_vert"},"bold":true,"color":"yellow"},{"text":" minerais verts ","color":"#699FA2"},{"text":"\u25a0","color":"green"},{"text":". Dépose en ","color":"#699FA2"},{"score":{"name":"vert_2","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":" pour recevoir ta prochaine récompense !","color":"#699FA2"}]

execute if data entity @s SelectedItem if score @s hallo_jauge_vert >= vert_2 hallo_palier_valeur run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"green"},{"text":":","color":"gray","bold":false},{"text":" J'ai quelque chose à te donner, vide ta main et reviens me voir !","color":"#699FA2","bold":false}]


execute unless data entity @s SelectedItem if score @s hallo_jauge_vert >= vert_2 hallo_palier_valeur run scoreboard players set @s hallo_gift_vert 2

execute unless data entity @s SelectedItem if score @s hallo_jauge_vert >= vert_2 hallo_palier_valeur run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"green"},{"text":":","color":"gray","bold":false},{"text":" Tiens, voilà un cadeau pour te remercier d'avoir déposé ","color":"#699FA2","bold":false},{"score":{"name":"vert_2","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":" minerais verts ","color":"#699FA2","bold":false},{"text":"\u25a0","color":"green","bold":false},{"text":" !","color":"#699FA2","bold":false}]
execute unless data entity @s SelectedItem if score @s hallo_jauge_vert >= vert_2 hallo_palier_valeur run give @s gold_ingot{display:{Name:'{"text":"Caramel mou","color":"green","bold":true,"italic":false}',Lore:['{"text":"Sucre 0","color":"gray","bold":false,"italic":false}','{"text":" "}','[{"text":"■","color":"green","italic":false},{"text":" 1500 minerais verts déposés","color":"#7D7A69","italic":false}]','{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}']},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
