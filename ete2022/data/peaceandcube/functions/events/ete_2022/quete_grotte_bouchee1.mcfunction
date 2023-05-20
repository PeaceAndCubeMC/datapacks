execute if entity @s[scores={ete2022_quete=4}] run scoreboard players set @s ete2022_quete 5

execute if entity @s[scores={ete2022_quete=5}] run playsound minecraft:block.gravel.break ambient @s ~ ~ ~ 10 0.5
execute if entity @s[scores={ete2022_quete=5}] run playsound minecraft:block.gravel.break ambient @s ~ ~ ~ 10 0.7

execute if entity @s[scores={ete2022_quete=5..}] run tp @s ~-2.5 ~1 ~3.5 0 -10