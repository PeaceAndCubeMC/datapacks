execute if entity @s[scores={ete2022_quete=9}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"text":"Sacha Lutier : ","color":"aqua"},{"text":"Levez l'encre ! On va couler le vieux raffiot de ce Lord !","color":"white"}]

execute if entity @s[scores={ete2022_quete=9}] in minecraft:event run tp @s -197.5 68.2 -551.5 180 0

execute if entity @s[scores={ete2022_quete=9}] at @s run playsound minecraft:entity.player.swim ambient @s ~ ~ ~ 10 0.8