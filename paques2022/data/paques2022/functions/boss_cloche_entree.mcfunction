execute unless entity @s[scores={paques_oeufs_bosstry_count=0..}] run scoreboard players set @s paques_oeufs_bosstry_count 0

#calcule le nombre d'essai disponible

execute store result score @s paques_oeufs_bosstry run scoreboard players get @s oeufs
scoreboard players operation @p paques_oeufs_bosstry /= nb_oeufs paques_oeufs_bosstry


#si nombre d'essai maximum possible atteint

execute if score @s paques_oeufs_bosstry <= @s paques_oeufs_bosstry_count run tellraw @s ["",{"text":"[Pâques 2022] ","bold":true,"color":"yellow"},{"text":"Tu dois encore récolter des oeufs pour pouvoir accéder à la cloche de Pâques. (Tu peux y accéder une fois tous les ","color":"#3DA339"},{"score":{"name":"nb_oeufs","objective":"paques_oeufs_bosstry"},"bold":true,"color":"gold"},{"text":" oeufs récoltés)","color":"#3DA339"}]


#si nombre d'essai maximum possible non atteint

execute if score @s paques_oeufs_bosstry > @s paques_oeufs_bosstry_count run setblock 200099 267 -299119 minecraft:redstone_block
execute if score @s paques_oeufs_bosstry > @s paques_oeufs_bosstry_count run tellraw @s ["",{"text":"[Pâques 2022] ","bold":true,"color":"yellow"},{"text":"L'incarnation de la cloche de Pâques est apparue ! Fait la disparaitre pour sauver l'île !","color":"#3DA339"}]
execute if score @s paques_oeufs_bosstry > @s paques_oeufs_bosstry_count run tp @s 200101.5 278 -299146.5 0 -25
execute if score @s paques_oeufs_bosstry > @s paques_oeufs_bosstry_count run scoreboard players add @s paques_oeufs_bosstry_count 1


