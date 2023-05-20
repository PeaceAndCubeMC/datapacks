execute store result score @s speed_limit run attribute @s minecraft:generic.movement_speed get 100
execute if score @s speed_limit matches 23.. run effect give @s minecraft:slowness 1 250
execute if score @s speed_limit matches 23.. run effect give @s minecraft:jump_boost 1 250
execute if score @s speed_limit matches 23.. run title @s times 0 23 0
execute if score @s speed_limit matches 23.. run title @s title {"text":"RALENTIS !","color":"red"}