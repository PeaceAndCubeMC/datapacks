execute positioned ~ ~ ~ if score @s oeufs >= #palierp7 oeufs run tellraw @s ["",{"text":"[Tape-Taupe]","bold":true,"color":"#754939"},{"text":" Tu entres dans le champ de taupe.","color":"green"}]
execute positioned ~ ~ ~ if score @s oeufs >= #palierp7 oeufs run tp @p[distance=..3] ~4.5 ~ ~2.5 0 0
execute positioned ~ ~ ~ if score @s oeufs < #palierp7 oeufs run tellraw @s ["",{"text":"[Tape-Taupe]","bold":true,"color":"#754939"},{"text":" Atteint le ","color":"green"},{"text":"niveau 7","bold":true,"color":"dark_green"},{"text":" de chocolatier pour avoir accès au Tape-Taupe.","color":"green"}]