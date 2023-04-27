tellraw @s ["",{"text":"[","color":"gray"},{"text":"Pâques 2023","color":"#54A448"},{"text":"]","color":"gray"},{"text":" Bien joué ! Tu as tué tous les voleurs.","color":"#FFFCB9"}]
execute positioned 200194 61 -299224 run tp @e[type=minecraft:item,nbt={Item:{tag:{Tags:["paques2023_voleur"]}}},distance=..15] 200126 74 -299258 0 0
tp @s 200126 74 -299258 0 0
execute if entity @s[advancements={paques2023:vol_a_etalage=false}] run tag @s add paques2023_q2_kill
advancement revoke @s only paques2023:kill_voleurs