setblock 200177 54 -299255 minecraft:air
execute if score @s paques2023_poule > @s paques2023_recordpoules run scoreboard players operation @s paques2023_recordpoules = @s paques2023_poule
kill @e[type=minecraft:chicken,tag=paques2023_poule,x=200160,y=43,z=-299267,distance=..30]
tellraw @s ["",{"text":"[","color":"gray"},{"text":"Pâques 2023","color":"#54A448"},{"text":"]","color":"gray"},{"text":" Bien joué ! Tu as compté ","color":"#FFFCB9"},{"score":{"name":"@s","objective":"paques2023_poule"},"color":"gold","bold":true},{"text":" poules. Ton record est de ","color":"#FFFCB9"},{"score":{"name":"@s","objective":"paques2023_recordpoules"},"color":"gold","bold":true},{"text":" poules.","color":"#FFFCB9"}]
tp @s 200110 73 -299261 90 0