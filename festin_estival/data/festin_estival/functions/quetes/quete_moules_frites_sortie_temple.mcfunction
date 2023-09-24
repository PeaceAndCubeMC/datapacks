execute if entity @s[tag=fe23_quete_moules_frites] if entity @e[tag=fe23_temple,distance=..50] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Hmm, je ne peux pas sortir sans me débarasser de ces sentinelles...","italic":true}]
execute if entity @s[tag=fe23_quete_moules_frites] if entity @e[tag=fe23_temple,distance=..50] run return -1

execute if entity @s[tag=fe23_quete_moules_frites] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Vite, sortons d'ici avant de tomber sur d'autres pièges... Je dois immédiatement prévenir Chloé Ritage de ce que je viens de trouver !","italic":true}]
execute if entity @s[tag=fe23_quete_moules_frites] run tag @s add fe23_quete_moules_frites_2
execute if entity @s[tag=fe23_quete_moules_frites] run tp @s -1865.5 113 -497.5 -90 0