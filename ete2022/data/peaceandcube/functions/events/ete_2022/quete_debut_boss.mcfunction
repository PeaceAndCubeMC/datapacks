execute if entity @s[scores={ete2022_quete=9}] unless score @s ete2022_boss_reset matches 1.. run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"text":"Sacha Lutier : ","color":"aqua"},{"text":"Sortez ! C'est l'heure de faire couler ce mécréant !","color":"white"}]

execute if entity @s[scores={ete2022_quete=9}] unless score @s ete2022_boss_reset matches 1.. run tag @s add ete2022_boss

execute if entity @s[scores={ete2022_quete=9}] unless score @s ete2022_boss_reset matches 1.. run playsound minecraft:event.raid.horn ambient @s ~ ~10 ~ 110 1.7

execute if entity @s[scores={ete2022_quete=9}] at @s unless score @s ete2022_boss_reset matches 1.. run tp @s ~-3 ~ ~

execute if entity @s[scores={ete2022_quete=9}] unless score @s ete2022_boss_reset matches 1.. run setblock ~ ~2 ~ air

execute if entity @s[scores={ete2022_quete=9}] unless score @s ete2022_boss_reset matches 1.. run setblock ~16 ~4 ~4 redstone_block


execute if entity @s[scores={ete2022_quete=9}] if score @s ete2022_boss_reset matches 1.. run tellraw @p[distance=..3] ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"text":"Tu as déjà affronté le Lord O'Nance aujourd'hui, reviens demain !","color":"white"}]

execute if entity @s[scores={ete2022_quete=9}] unless score @s ete2022_boss_reset matches 1.. run scoreboard players set @s ete2022_boss_reset 1

