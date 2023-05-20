execute if score @s hallo_jauge_bleu < bleu_7 hallo_palier_valeur run tellraw @s ["",{"text":"Techno-chercheur","bold":true,"color":"aqua"},{"text":":","color":"gray"},{"text":" Tu as déjà déposé ","color":"#699FA2"},{"score":{"name":"@s","objective":"hallo_jauge_bleu"},"bold":true,"color":"yellow"},{"text":" minerais bleus ","color":"#699FA2"},{"text":"\u25c6","color":"aqua"},{"text":". Dépose en ","color":"#699FA2"},{"score":{"name":"bleu_7","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":" pour recevoir ta prochaine récompense !","color":"#699FA2"}]

execute if data entity @s SelectedItem if score @s hallo_jauge_bleu >= bleu_7 hallo_palier_valeur run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"aqua"},{"text":":","color":"gray","bold":false},{"text":" J'ai quelque chose à te donner, vide ta main et reviens me voir !","color":"#699FA2","bold":false}]


execute unless data entity @s SelectedItem if score @s hallo_jauge_bleu >= bleu_7 hallo_palier_valeur run scoreboard players set @s hallo_gift_bleu 7

execute unless data entity @s SelectedItem if score @s hallo_jauge_bleu >= bleu_7 hallo_palier_valeur run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"aqua"},{"text":":","color":"gray","bold":false},{"text":" Tiens, voilà un cadeau pour te remercier d'avoir déposé ","color":"#699FA2","bold":false},{"score":{"name":"bleu_7","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":" minerais bleus ","color":"#699FA2","bold":false},{"text":"\u25c6","color":"aqua","bold":false},{"text":" !","color":"#699FA2","bold":false}]
execute unless data entity @s SelectedItem if score @s hallo_jauge_bleu >= bleu_7 hallo_palier_valeur run give @s flower_banner_pattern{display:{Name:'{"text":"Texture customisée : Morsure du froid","color":"aqua","bold":true,"italic":false}',Lore:['{"text":"Cet objet est une texture customisée qui","color":"#4FC447","bold":false,"italic":false}','{"text":"sera consommée après utilisation","color":"#4FC447","bold":false,"italic":false}','[{"text":"Applicable sur : ","color":"#9132AD","bold":false,"italic":false},{"text":"épée en netherite","color":"gold","bold":true,"italic":false}]','{"text":" "}','[{"text":"◆","color":"aqua","bold":false,"italic":false},{"text":" 40000 minerais bleus déposés","color":"#7D7A69","bold":false,"italic":false}]','{"text":"Texture customisée : Morsure du froid","color":"aqua","bold":false,"italic":true}','{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}']},HideFlags:32,CustomModelData:2022103,Tags:["texture_customisee","halloween2022_morsure_du_froid"]} 1
