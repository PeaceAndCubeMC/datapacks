execute if entity @s[tag=paques_taupe,scores={paques_cloche=..499}] run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Tu n'as pas assez de cloche pour acheter cet article.","color":"green"}]


execute unless entity @s[tag=paques_taupe] run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Tu dois finir l'activité","color":"green"},{"text":" Tape-Taupe","bold":true,"color":"dark_green"},{"text":" pour pouvoir acheter cet article.","color":"green"}]


execute if entity @s[tag=paques_taupe,scores={paques_cloche=500..}] run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Achat effectué. Profite bien de ton nouvel article !","color":"green"}]

execute if entity @s[tag=paques_taupe,scores={paques_cloche=500..}] run give @s quartz{display:{Name:'{"text":"Griffe de Taupe","color":"#6D4C41","bold":true,"italic":false}',Lore:['{"text":" "}','[{"text":"Pâques","color":"#3DA339","bold":true,"italic":false},{"text":" ●","color":"white","bold":false,"italic":false},{"text":" 2022","color":"#754939","bold":true,"italic":false}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.02,Operation:0,UUID:[I;1081749709,511722078,-1412884224,-1692003775],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-6,Operation:0,UUID:[I;76379487,1691961281,-2065612113,-282410044],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1.75,Operation:0,UUID:[I;411893344,1395305,-1663368816,1321979892],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;-1426353277,-928038557,-1896866446,1057872735],Slot:"mainhand"}]} 1

execute if entity @s[tag=paques_taupe,scores={paques_cloche=10..}] run scoreboard players remove @s paques_cloche 500