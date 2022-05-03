execute if entity @s[tag=paques_arc,scores={paques_cloche=..799}] run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Tu n'as pas assez de cloche pour acheter cet article.","color":"green"}]


execute unless entity @s[tag=paques_arc] run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Tu dois finir l'activité","color":"green"},{"text":" Tir à l'arc","bold":true,"color":"dark_green"},{"text":" pour pouvoir acheter cet article.","color":"green"}]


execute if entity @s[tag=paques_arc,scores={paques_cloche=800..}] run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Achat effectué. Profite bien de ton nouvel article !","color":"green"}]

execute if entity @s[tag=paques_arc,scores={paques_cloche=800..}] run give @s bow{display:{Name:'{"text":"Mousquet de Pâques","color":"#4557AD","bold":true,"italic":false}',Lore:['[{"text":"Pâques","color":"#3DA339","bold":true,"italic":false},{"text":" ●","color":"white","bold":false},{"text":" ","color":"dark_purple"},{"text":"2022","color":"#754939"}]']},Enchantments:[{id:"minecraft:punch",lvl:3s},{id:"minecraft:infinity",lvl:1s},{id:"minecraft:mending",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:6,Operation:0,UUID:[I;448285526,-169390572,-1419640833,-1334350301],Slot:"mainhand"},{AttributeName:"generic.luck",Name:"generic.luck",Amount:-4,Operation:0,UUID:[I;-945865850,-1769979275,-1539186830,-1601986780],Slot:"mainhand"}]} 1

execute if entity @s[tag=paques_arc,scores={paques_cloche=800..}] run scoreboard players remove @s paques_cloche 800