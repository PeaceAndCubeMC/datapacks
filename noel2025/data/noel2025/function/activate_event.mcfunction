execute if score @s noel2025_actif matches 1 run return run tellraw @s [[{"text":"Noël","color":"#C13C3F","bold":true,"italic":false},{"text":" 2025","color":"white"}],{"text":" >> ","color":"gray","bold":false},{"text":"Tu as déjà activé l'event !","color":"#F5EACE","bold":false}]

scoreboard players set @s noel2025_actif 1
advancement grant @s only noel2025:progress/root

tellraw @s [[{"text":"Noël","color":"#C13C3F","bold":true,"italic":false},{"text":" 2025","color":"white"}],{"text":" >> ","color":"gray","bold":false},{"text":"Tu as activé l'event ! Des gobelins ont désormais une chance d'apparaître lorsque tu réalises certaines actions.","color":"#F5EACE","bold":false}]

execute at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~
