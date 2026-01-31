execute unless score @s noel2025_actif matches 1 run return run tellraw @s [[{"text":"Noël","color":"#C13C3F","bold":true,"italic":false},{"text":" 2025","color":"white"}],{"text":" >> ","color":"gray","bold":false},{"text":"Tu as déjà désactivé l'event !","color":"#F5EACE","bold":false}]

scoreboard players set @s noel2025_actif 0

tellraw @s [[{"text":"Noël","color":"#C13C3F","bold":true,"italic":false},{"text":" 2025","color":"white"}],{"text":" >> ","color":"gray","bold":false},{"text":"Tu as désactivé l'event ! Les gobelins n'apparaîtront plus jusqu'à ce que tu le réactives.","color":"#F5EACE","bold":false}]

execute at @s run playsound minecraft:block.redstone_torch.burnout master @s ~ ~ ~
