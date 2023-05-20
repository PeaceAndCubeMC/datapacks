tp @s ~33 ~24 ~-67 -135 0

execute at @s run playsound minecraft:entity.player.splash ambient @s ~ ~ ~ 2 1

effect give @s minecraft:blindness 3 0 true

tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"selector":"@s","color":"blue"},{"text":" : ","color":"blue"},{"text":"Je commençais à manquer d'air. Heureusement que j'ai pu sortir de l'eau à temps.","color":"white"}]
