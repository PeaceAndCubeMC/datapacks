execute if entity @s[tag=fe23_quete_oignon] run clear @s bucket 1
execute if entity @s[tag=fe23_quete_oignon] run give @s water_bucket{Tags:["fe23_quete_oignon"]} 1
execute if entity @s[tag=fe23_quete_oignon] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Parfait, Amanda Rine sera ravie !","italic":true}]