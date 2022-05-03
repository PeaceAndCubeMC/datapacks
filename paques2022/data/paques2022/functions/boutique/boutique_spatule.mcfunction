#Si bon niveau de chocolatier mais pas assez d'argent

execute if score @s oeufs >= #palierp1 oeufs if entity @s[scores={oeufs_money=..49}] run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Tu n'as pas assez d'oeufs pour acheter cet article.","color":"green"}]



#Si pas bon niveau de chocolatier

execute if score @s oeufs < #palierp1 oeufs run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Tu dois augmenter de niveau de chocolatier pour acheter cet article.","color":"green"}]



#Si bon niveau de chocolatier et assez d'argent

execute if score @s oeufs >= #palierp1 oeufs if entity @s[scores={oeufs_money=50..}] run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Achat effectué. Profite bien de ton nouvel article !","color":"green"}]

execute if score @s oeufs >= #palierp1 oeufs if entity @s[scores={oeufs_money=50..}] run give @s wooden_shovel{CanPlaceOn:["minecraft:cake"],display:{Name:'{"text":"Spatule en bois","color":"#CFE7E8","bold":true,"italic":false}',Lore:['{"text":" "}','[{"text":"Pâques","color":"#3DA339","bold":true,"italic":false},{"text":" ●","color":"white","bold":false,"italic":false},{"text":" 2022","color":"#754939","bold":true,"italic":false}]']},Enchantments:[{id:"minecraft:sharpness",lvl:2s},{id:"minecraft:smite",lvl:2s},{id:"minecraft:fire_aspect",lvl:2s},{id:"minecraft:efficiency",lvl:5s},{id:"minecraft:unbreaking",lvl:50s}],AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:2,Operation:0,UUID:[I;-39952494,242961607,-1217867417,1698092164],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-1812597197,1594901817,-1134317749,-27077728],Slot:"mainhand"}]} 1

execute if score @s oeufs >= #palierp1 oeufs if entity @s[scores={oeufs_money=50..}] run scoreboard players remove @s oeufs_money 50