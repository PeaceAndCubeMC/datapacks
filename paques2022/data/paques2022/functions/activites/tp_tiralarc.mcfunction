execute positioned ~ ~ ~ if score @s oeufs >= #palierp5 oeufs run tellraw @s ["",{"text":"[Tir à l'arc]","bold":true,"color":"red"},{"text":" Tu entres dans la bataille.","color":"green"}]
execute positioned ~ ~ ~ if score @s oeufs >= #palierp5 oeufs run execute in minecraft:event run tp @s -705.5 257 -167.5 -135 0
execute positioned ~ ~ ~ if score @s oeufs < #palierp5 oeufs run tellraw @s ["",{"text":"[Tir à l'arc]","bold":true,"color":"red"},{"text":" Atteint le ","color":"green"},{"text":"niveau 5","bold":true,"color":"dark_green"},{"text":" de chocolatier pour avoir accès au tir à l'arc.","color":"green"}]