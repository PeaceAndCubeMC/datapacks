execute store result score @s health_limit run attribute @s minecraft:generic.max_health get 1
execute if score @s health_limit matches 31.. run effect give @s minecraft:slowness 1 250
execute if score @s health_limit matches 31.. run effect give @s minecraft:blindness 3 250
execute if score @s health_limit matches 31.. run effect give @s minecraft:jump_boost 1 250

execute if score @s health_limit matches 31.. run title @s times 0 23 0
execute if score @s health_limit matches 31.. run title @s title {"text":"TU AS TROP DE VIE !","color":"red"}