execute positioned ~ ~ ~ if score @s oeufs >= #palierp3 oeufs run tellraw @s ["",{"text":"[Dropper]","bold":true,"color":"dark_green"},{"text":" Voici le Dropper. Arrive en bas sans mourir pour triompher !","color":"green"}]
execute positioned ~ ~ ~ if score @s oeufs >= #palierp3 oeufs run execute in minecraft:event run tp @s -708.5 232 -76.5 90 0
execute positioned ~ ~ ~ if score @s oeufs < #palierp3 oeufs run tellraw @s ["",{"text":"[Dropper]","bold":true,"color":"dark_green"},{"text":" Atteint le ","color":"green"},{"text":"niveau 3","bold":true,"color":"dark_green"},{"text":" de chocolatier pour avoir accès au Dropper.","color":"green"}]