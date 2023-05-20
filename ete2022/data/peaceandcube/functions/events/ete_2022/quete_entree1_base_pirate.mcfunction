tp @s ~210 ~28.5 ~-139.5

execute at @s run playsound minecraft:block.chain.break ambient @s ~ ~ ~ 2 0.5
execute at @s run playsound minecraft:block.iron_door.open ambient @s ~ ~ ~ 2 0.5

effect give @s minecraft:blindness 10 0 true

tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"text":"Voix inconnue : ","color":"red"},{"text":"Qui es tu ? Tu n'es pas avec nous toi ! Les gars, un intru !","color":"white"}]

tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"selector":"@s","color":"blue"},{"text":" : ","color":"blue"},{"text":"Qu'est-ce qui m'arrive ? Une cellule ? Je dois trouver un moyen de sortir d'ici.","color":"white"}]
