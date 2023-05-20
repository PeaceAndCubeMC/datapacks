execute as @s run tellraw @s ["",{"text":"Techno-chercheur","bold":true,"color":"dark_purple"},{"text":":","color":"gray"},{"text":" Je suis l'ingénieur en charge du système de filtration de cette source d'eau. Si tu rapportes des minerais violets ","color":"#699FA2"},{"text":"\u25bc","color":"dark_purple"},{"text":" aux machines de récolte dans le laboratoire de Dr. Packenstein, je t'offrirais des récompenses pour te remercier de nous aider à maintenir cette machine en marche !","color":"#699FA2"}]

#Initialisation du score hallo_gift_violet
execute unless score @s hallo_gift_violet matches -1.. run scoreboard players set @s hallo_gift_violet 0

execute as @s if score @s hallo_gift_violet matches 7 run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"dark_purple"},{"text":":","color":"gray"},{"text":" Tu as surpassé nos attentes ! Je n'ai plus rien à te donner, merci encore de t'être tant investi !","color":"#699FA2","bold":false}]
execute as @s if score @s hallo_gift_violet matches 6 run function peaceandcube:events/halloween2022/recompenses/violet/jauge_violet_gift_7
execute as @s if score @s hallo_gift_violet matches 5 run function peaceandcube:events/halloween2022/recompenses/violet/jauge_violet_gift_6
execute as @s if score @s hallo_gift_violet matches 4 run function peaceandcube:events/halloween2022/recompenses/violet/jauge_violet_gift_5
execute as @s if score @s hallo_gift_violet matches 3 run function peaceandcube:events/halloween2022/recompenses/violet/jauge_violet_gift_4
execute as @s if score @s hallo_gift_violet matches 2 run function peaceandcube:events/halloween2022/recompenses/violet/jauge_violet_gift_3
execute as @s if score @s hallo_gift_violet matches 1 run function peaceandcube:events/halloween2022/recompenses/violet/jauge_violet_gift_2
execute as @s if score @s hallo_gift_violet matches 0 run function peaceandcube:events/halloween2022/recompenses/violet/jauge_violet_gift_1