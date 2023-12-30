execute positioned -3003 54 -1392 run kill @e[tag=h23_sbire,distance=..70]
execute positioned -3003 54 -1392 run kill @e[tag=h23_cravebi,distance=..70]

setblock -3013 82 -1382 minecraft:light_weighted_pressure_plate

tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Bravo, tu es venu à bout de Cravebi ! Reviens me voir en sortant d'ici.","color":"#C5CDB5","bold":false}]

scoreboard players add @s h23_cravebi 1
scoreboard players set @s h23_avancee 10
advancement grant @s only peaceandcube:events/halloween_2023

advancement revoke @s only halloween2023:boss/cravebi