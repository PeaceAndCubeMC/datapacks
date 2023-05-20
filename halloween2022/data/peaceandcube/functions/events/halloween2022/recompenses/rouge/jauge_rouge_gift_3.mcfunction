execute if score @s hallo_jauge_rouge < rouge_3 hallo_palier_valeur run tellraw @s ["",{"text":"Techno-chercheur","bold":true,"color":"red"},{"text":":","color":"gray"},{"text":" Tu as déjà déposé ","color":"#699FA2"},{"score":{"name":"@s","objective":"hallo_jauge_rouge"},"bold":true,"color":"yellow"},{"text":" minerais rouges ","color":"#699FA2"},{"text":"\u25b2","color":"red"},{"text":". Dépose en ","color":"#699FA2"},{"score":{"name":"rouge_3","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":" pour recevoir ta prochaine récompense !","color":"#699FA2"}]

execute if data entity @s SelectedItem if score @s hallo_jauge_rouge >= rouge_3 hallo_palier_valeur run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"red"},{"text":":","color":"gray","bold":false},{"text":" J'ai quelque chose à te donner, vide ta main et reviens me voir !","color":"#699FA2","bold":false}]


execute unless data entity @s SelectedItem if score @s hallo_jauge_rouge >= rouge_3 hallo_palier_valeur run scoreboard players set @s hallo_gift_rouge 3

execute unless data entity @s SelectedItem if score @s hallo_jauge_rouge >= rouge_3 hallo_palier_valeur run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"red"},{"text":":","color":"gray","bold":false},{"text":" Tiens, voilà un cadeau pour te remercier d'avoir déposé ","color":"#699FA2","bold":false},{"score":{"name":"rouge_3","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":" minerais rouges ","color":"#699FA2","bold":false},{"text":"\u25b2","color":"red","bold":false},{"text":" !","color":"#699FA2","bold":false}]
execute unless data entity @s SelectedItem if score @s hallo_jauge_rouge >= rouge_3 hallo_palier_valeur run give @s piglin_banner_pattern{display:{Name:'{"text":"Certificat de Dieu de la mine","color":"red","bold":true,"italic":false}',Lore:['{"text":"Les mines n\'ont plus de secret pour vous.","color":"gray","bold":false,"italic":false}','{"text":" "}','[{"text":"▲","color":"red","italic":false},{"text":" 8000 minerais rouges déposés","color":"#7D7A69","italic":false}]','{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}']},HideFlags:32} 1



# PAS UTILE, check score directement ?? execute unless data entity @s SelectedItem if score @s hallo_jauge_rouge >= rouge_3 hallo_palier_valeur run tag @s add hallo_boss_unlock
