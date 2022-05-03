execute if entity @s[tag=paques_laby,scores={paques_cloche=..1499}] run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Tu n'as pas assez de cloche pour acheter cet article.","color":"green"}]


execute unless entity @s[tag=paques_laby] run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Tu dois finir l'activité","color":"green"},{"text":" Labyrinthe","bold":true,"color":"dark_green"},{"text":" pour pouvoir acheter cet article.","color":"green"}]


execute if entity @s[tag=paques_laby,scores={paques_cloche=1500..}] run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Achat effectué. Profite bien de ton nouvel article !","color":"green"}]

execute if entity @s[tag=paques_laby,scores={paques_cloche=1500..}] run give @s iron_pickaxe{AttributeModifiers:[{AttributeName:"generic.attack_speed",Amount:-2.7,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;-122318,62503,112126,-125006]},{AttributeName:"generic.attack_damage",Amount:12,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-122318,62603,112126,-125206]}],display:{Name:'[{"text":"Pioche d\'explorateur","italic":false,"color":"#cc9900","bold":true}]',Lore:['[{"text":"","italic":false}]','[{"text":"Pâques","italic":false,"color":"#3da339","bold":true},{"text":" ●","color":"white","bold":false},{"text":" ","color":"dark_purple"},{"text":"2022","color":"#754939"}]']},Enchantments:[{id:flame,lvl:1},{id:knockback,lvl:1},{id:looting,lvl:4},{id:mending,lvl:1},{id:punch,lvl:3},{id:soul_speed,lvl:3},{id:unbreaking,lvl:5}]} 1

execute if entity @s[tag=paques_laby,scores={paques_cloche=1500..}] run scoreboard players remove @s paques_cloche 1500