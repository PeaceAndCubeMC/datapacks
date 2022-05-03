#nom et valeur max de la bossbar oeuf palier 7

bossbar set oeufs name ["",{"text":"Oeufs récoltés","bold":true,"color":"#3DA339"},{"text":" \u25cf "},{"text":"Palier 7","color":"#754939","bold":true}]
execute store result bossbar minecraft:oeufs max run scoreboard players get #palierg7 oeufs

execute as @a[distance=..200] at @s run playsound minecraft:block.bell.use ambient @s ~ ~ ~ 1 0.9
execute as @a[distance=..200] at @s run playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~ ~ 1 2