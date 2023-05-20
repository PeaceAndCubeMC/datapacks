execute if score @s hallo_jauge_vert < vert_5 hallo_palier_valeur run tellraw @s ["",{"text":"Techno-chercheur","bold":true,"color":"green"},{"text":":","color":"gray"},{"text":" Tu as déjà déposé ","color":"#699FA2"},{"score":{"name":"@s","objective":"hallo_jauge_vert"},"bold":true,"color":"yellow"},{"text":" minerais verts ","color":"#699FA2"},{"text":"\u25a0","color":"green"},{"text":". Dépose en ","color":"#699FA2"},{"score":{"name":"vert_5","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":" pour recevoir ta prochaine récompense !","color":"#699FA2"}]

execute if data entity @s SelectedItem if score @s hallo_jauge_vert >= vert_5 hallo_palier_valeur run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"green"},{"text":":","color":"gray","bold":false},{"text":" J'ai quelque chose à te donner, vide ta main et reviens me voir !","color":"#699FA2","bold":false}]


execute unless data entity @s SelectedItem if score @s hallo_jauge_vert >= vert_5 hallo_palier_valeur run scoreboard players set @s hallo_gift_vert 5

execute unless data entity @s SelectedItem if score @s hallo_jauge_vert >= vert_5 hallo_palier_valeur run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"green"},{"text":":","color":"gray","bold":false},{"text":" Tiens, voilà un cadeau pour te remercier d'avoir déposé ","color":"#699FA2","bold":false},{"score":{"name":"vert_5","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":" minerais verts ","color":"#699FA2","bold":false},{"text":"\u25a0","color":"green","bold":false},{"text":" !","color":"#699FA2","bold":false}]
execute unless data entity @s SelectedItem if score @s hallo_jauge_vert >= vert_5 hallo_palier_valeur run give @s chainmail_leggings{display:{Name:'{"text":"Pantalon de sécurité","color":"green","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Jean souple et résistant","color":"gray","bold":false,"italic":false}','{"text":" "}','[{"text":"■","color":"green","italic":false},{"text":" 16000 minerais verts déposés","color":"#7D7A69","italic":false}]','{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}']},Enchantments:[{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:unbreaking",lvl:10s},{id:"minecraft:mending",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5.5,Operation:0,UUID:[I;662771799,-1053277341,-1161150750,1683607069],Slot:"legs"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:0,UUID:[I;-1719766842,2047623943,-1865430571,1256049881],Slot:"legs"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-1,Operation:0,UUID:[I;-1121252044,-1074576146,-1330770303,-150127862],Slot:"legs"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-0.33,Operation:0,UUID:[I;-1212638669,517688092,-1642186522,834728518],Slot:"legs"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.2,Operation:0,UUID:[I;1532822305,-1473296903,-1335025892,402793404],Slot:"legs"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.066,Operation:0,UUID:[I;1036435571,379866528,-1111839404,-1115777274],Slot:"legs"}]} 1
