execute if entity @s[tag=fe23_quete_huile_tournesol] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Hum, quel est donc ce liquide jaune et collant... Je devrais aller demander à l'alchimiste du marché.","italic":true}]
execute if entity @s[tag=fe23_quete_huile_tournesol] run tag @s add fe23_quete_huile_tournesol_2
execute if entity @s[tag=fe23_quete_huile_tournesol] run tag @s remove fe23_quete_huile_tournesol