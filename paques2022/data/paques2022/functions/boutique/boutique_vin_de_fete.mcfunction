#Si bon niveau de chocolatier mais pas assez d'argent

execute if score @s oeufs >= #palierp1 oeufs if entity @s[scores={oeufs_money=..24}] run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Tu n'as pas assez d'oeufs pour acheter cet article.","color":"green"}]



#Si pas bon niveau de chocolatier

execute if score @s oeufs < #palierp1 oeufs run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Tu dois augmenter de niveau de chocolatier pour acheter cet article.","color":"green"}]



#Si bon niveau de chocolatier et assez d'argent

execute if score @s oeufs >= #palierp1 oeufs if entity @s[scores={oeufs_money=25..}] run tellraw @s ["",{"text":"[Boutique de Pâques]","bold":true,"color":"yellow"},{"text":" Achat effectué. Profite bien de ton nouvel article !","color":"green"}]

execute if score @s oeufs >= #palierp1 oeufs if entity @s[scores={oeufs_money=25..}] run give @s potion{display:{Name:'{"text":"Vin de fête","color":"#FFF780","bold":true,"italic":false}',Lore:['{"text":"Vitesse (0:20)","color":"blue","bold":false,"italic":false}','{"text":"Régénération 5 (0:10)","color":"blue","bold":false,"italic":false}','{"text":"Absorption (0:30)","color":"blue","bold":false,"italic":false}','{"text":"Nourriture +5","color":"blue","bold":false,"italic":false}','{"text":" "}','[{"text":"Pâques","color":"#3DA339","bold":true,"italic":false},{"text":" ●","color":"white","bold":false,"italic":false},{"text":" 2022","color":"#754939","bold":true,"italic":false}]']},HideFlags:32,CustomPotionEffects:[{Id:1b,Amplifier:0b,Duration:400},{Id:10b,Amplifier:4b,Duration:200},{Id:22b,Amplifier:0b,Duration:600},{Id:23b,Amplifier:9b,Duration:20}],CustomPotionColor:16758896} 1

execute if score @s oeufs >= #palierp1 oeufs if entity @s[scores={oeufs_money=25..}] run scoreboard players remove @s oeufs_money 25