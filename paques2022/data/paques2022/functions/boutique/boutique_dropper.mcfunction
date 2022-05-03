execute if entity @s[tag=paques_dropper,scores={paques_cloche=..1199}] run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Tu n'as pas assez de cloche pour acheter cet article.","color":"green"}]


execute unless entity @s[tag=paques_dropper] run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Tu dois finir l'activité","color":"green"},{"text":" Dropper","bold":true,"color":"dark_green"},{"text":" pour pouvoir acheter cet article.","color":"green"}]


execute if entity @s[tag=paques_dropper,scores={paques_cloche=1200..}] run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Achat effectué. Profite bien de ton nouvel article !","color":"green"}]

execute if entity @s[tag=paques_dropper,scores={paques_cloche=1200..}] run give @s elytra{display:{Name:'{"text":"Planneur","color":"#8A8A8A","bold":true,"italic":false}',Lore:['{"text":" "}','[{"text":"Pâques","color":"#3DA339","bold":true,"italic":false},{"text":" ●","color":"white","bold":false,"italic":false},{"text":" 2022","color":"#754939","bold":true,"italic":false}]']},Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:fire_protection",lvl:2s},{id:"minecraft:blast_protection",lvl:1s},{id:"minecraft:projectile_protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;1754782526,281889131,-1130350755,1768840723],Slot:"chest"}]} 1

execute if entity @s[tag=paques_dropper,scores={paques_cloche=1200..}] run scoreboard players remove @s paques_cloche 1200