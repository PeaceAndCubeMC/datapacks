#Si bon niveau de chocolatier mais pas assez d'argent

execute if score @s oeufs >= #palierp1 oeufs if entity @s[scores={oeufs_money=..9}] run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Tu n'as pas assez d'oeufs pour acheter cet article.","color":"green"}]



#Si pas bon niveau de chocolatier

execute if score @s oeufs < #palierp1 oeufs run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Tu dois augmenter de niveau de chocolatier pour acheter cet article.","color":"green"}]



#Si bon niveau de chocolatier et assez d'argent

execute if score @s oeufs >= #palierp1 oeufs if entity @s[scores={oeufs_money=10..}] run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Achat effectué. Profite bien de ton nouvel article !","color":"green"}]

execute if score @s oeufs >= #palierp1 oeufs if entity @s[scores={oeufs_money=10..}] run give @s tipped_arrow{display:{Name:'{"text":"Flèche de protection","color":"#8B7D94","bold":true,"italic":false}',Lore:['{"text":" "}','[{"text":"Pâques","color":"#3DA339","bold":true,"italic":false},{"text":" ●","color":"white","bold":false,"italic":false},{"text":" 2022","color":"#754939","bold":true,"italic":false}]']},CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:600},{Id:10b,Amplifier:0b,Duration:200},{Id:11b,Amplifier:1b,Duration:600},{Id:18b,Amplifier:2b,Duration:600},{Id:21b,Amplifier:1b,Duration:400}],CustomPotionColor:9141652} 16

execute if score @s oeufs >= #palierp1 oeufs if entity @s[scores={oeufs_money=10..}] run scoreboard players remove @s oeufs_money 10