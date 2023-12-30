execute as @s at @s run scoreboard players add @a[distance=..7] h23_connaissance_2017 25
execute as @s at @s run scoreboard players add @a[distance=..7] h23_connaissance_2023 25
execute at @s as @a[distance=..7] run scoreboard players add total h23_connaissance_2023 25

scoreboard players add total_2017 h23_boss_killed 1
execute as @s run function halloween2023:connaissance_scb/count_boss_killed

advancement revoke @s only halloween2023:connaissance_scb/connaissance_boss_2017