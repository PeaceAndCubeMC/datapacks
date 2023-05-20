execute as @s run tellraw @s ["",{"text":"Techno-chercheur","bold":true,"color":"green"},{"text":":","color":"gray"},{"text":" Je suis l'ingénieur en charge du barrage décupleur de goût. Si tu rapportes des minerais verts ","color":"#699FA2"},{"text":"\u25a0","color":"green"},{"text":" aux machines de récolte dans le laboratoire de Dr. Packenstein, je t'offrirais des récompenses pour te remercier de nous aider à maintenir cette machine en marche !","color":"#699FA2"}]

#Initialisation du score hallo_gift_vert
execute unless score @s hallo_gift_vert matches -1.. run scoreboard players set @s hallo_gift_vert 0

execute as @s if score @s hallo_gift_vert matches 7 run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"green"},{"text":":","color":"gray"},{"text":" Tu as surpassé nos attentes ! Je n'ai plus rien à te donner, merci encore de t'être tant investi !","color":"#699FA2","bold":false}]
execute as @s if score @s hallo_gift_vert matches 6 run function peaceandcube:events/halloween2022/recompenses/vert/jauge_verte_gift_7
execute as @s if score @s hallo_gift_vert matches 5 run function peaceandcube:events/halloween2022/recompenses/vert/jauge_verte_gift_6
execute as @s if score @s hallo_gift_vert matches 4 run function peaceandcube:events/halloween2022/recompenses/vert/jauge_verte_gift_5
execute as @s if score @s hallo_gift_vert matches 3 run function peaceandcube:events/halloween2022/recompenses/vert/jauge_verte_gift_4
execute as @s if score @s hallo_gift_vert matches 2 run function peaceandcube:events/halloween2022/recompenses/vert/jauge_verte_gift_3
execute as @s if score @s hallo_gift_vert matches 1 run function peaceandcube:events/halloween2022/recompenses/vert/jauge_verte_gift_2
execute as @s if score @s hallo_gift_vert matches 0 run function peaceandcube:events/halloween2022/recompenses/vert/jauge_verte_gift_1