execute if score @s hallo_jauge_violet < violet_3 hallo_palier_valeur run tellraw @s ["",{"text":"Techno-chercheur","bold":true,"color":"dark_purple"},{"text":":","color":"gray"},{"text":" Tu as déjà déposé ","color":"#699FA2"},{"score":{"name":"@s","objective":"hallo_jauge_violet"},"bold":true,"color":"yellow"},{"text":" minerais violets ","color":"#699FA2"},{"text":"\u25bc","color":"dark_purple"},{"text":". Dépose en ","color":"#699FA2"},{"score":{"name":"violet_3","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":" pour recevoir ta prochaine récompense !","color":"#699FA2"}]

execute if data entity @s SelectedItem if score @s hallo_jauge_violet >= violet_3 hallo_palier_valeur run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"dark_purple"},{"text":":","color":"gray","bold":false},{"text":" J'ai quelque chose à te donner, vide ta main et reviens me voir !","color":"#699FA2","bold":false}]


execute unless data entity @s SelectedItem if score @s hallo_jauge_violet >= violet_3 hallo_palier_valeur run scoreboard players set @s hallo_gift_violet 3

execute unless data entity @s SelectedItem if score @s hallo_jauge_violet >= violet_3 hallo_palier_valeur run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"dark_purple"},{"text":":","color":"gray","bold":false},{"text":" Tiens, voilà un cadeau pour te remercier d'avoir déposé ","color":"#699FA2","bold":false},{"score":{"name":"violet_3","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":" minerais violets ","color":"#699FA2","bold":false},{"text":"\u25bc","color":"dark_purple","bold":false},{"text":" !","color":"#699FA2","bold":false}]
execute unless data entity @s SelectedItem if score @s hallo_jauge_violet >= violet_3 hallo_palier_valeur unless score @s hallo22_pioche_lvl matches 3.. run scoreboard players set @s hallo22_pioche_lvl 3
execute unless data entity @s SelectedItem if score @s hallo_jauge_violet >= violet_3 hallo_palier_valeur run give @s piglin_banner_pattern{display:{Name:'{"text":"Certificat de Mineur expérimenté","color":"dark_purple","bold":true,"italic":false}',Lore:['{"text":"Donne accès à la grotte de glace.","color":"gray","bold":false,"italic":false}','{"text":" "}','[{"text":"▼","color":"dark_purple","italic":false},{"text":" 3000 minerais violets déposés","color":"#7D7A69","italic":false}]','{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}']},HideFlags:32} 1