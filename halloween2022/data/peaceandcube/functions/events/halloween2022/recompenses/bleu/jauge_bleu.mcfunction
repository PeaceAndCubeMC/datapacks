execute as @s run tellraw @s ["",{"text":"Techno-chercheur","bold":true,"color":"aqua"},{"text":":","color":"gray"},{"text":" Je suis l'ingénieur en charge de la machine de purification de l'air de la surface. Si tu rapportes des minerais bleus ","color":"#699FA2"},{"text":"\u25c6","color":"aqua"},{"text":" aux machines de récolte dans le laboratoire de Dr. Packenstein, je t'offrirais des récompenses pour te remercier de nous aider à maintenir cette machine en marche !","color":"#699FA2"}]

#Initialisation du score hallo_gift_bleu
execute unless score @s hallo_gift_bleu matches -1.. run scoreboard players set @s hallo_gift_bleu 0

execute as @s if score @s hallo_gift_bleu matches 7 run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"aqua"},{"text":":","color":"gray"},{"text":" Tu as surpassé nos attentes ! Je n'ai plus rien à te donner, merci encore de t'être tant investi !","color":"#699FA2","bold":false}]
execute as @s if score @s hallo_gift_bleu matches 6 run function peaceandcube:events/halloween2022/recompenses/bleu/jauge_bleu_gift_7
execute as @s if score @s hallo_gift_bleu matches 5 run function peaceandcube:events/halloween2022/recompenses/bleu/jauge_bleu_gift_6
execute as @s if score @s hallo_gift_bleu matches 4 run function peaceandcube:events/halloween2022/recompenses/bleu/jauge_bleu_gift_5
execute as @s if score @s hallo_gift_bleu matches 3 run function peaceandcube:events/halloween2022/recompenses/bleu/jauge_bleu_gift_4
execute as @s if score @s hallo_gift_bleu matches 2 run function peaceandcube:events/halloween2022/recompenses/bleu/jauge_bleu_gift_3
execute as @s if score @s hallo_gift_bleu matches 1 run function peaceandcube:events/halloween2022/recompenses/bleu/jauge_bleu_gift_2
execute as @s if score @s hallo_gift_bleu matches 0 run function peaceandcube:events/halloween2022/recompenses/bleu/jauge_bleu_gift_1