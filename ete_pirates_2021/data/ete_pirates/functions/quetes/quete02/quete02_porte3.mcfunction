execute if entity @s[scores={ete_quete_02=15..}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Je n'ai pas vraiment envie de retomber nez à nez avec la créature de la dernière fois.*","color":"#8EE9BF"},{"text":"\n "}]

execute if entity @s[scores={ete_quete_02=14}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *AHHHH ! Un monstre !*","color":"#8EE9BF"},{"text":"\n "}]
execute at @s if entity @s[scores={ete_quete_02=14}] run playsound minecraft:entity.ravager.ambient master @p ~ ~ ~ 10 0.5
execute at @s if entity @s[scores={ete_quete_02=14}] run playsound minecraft:entity.ravager.ambient master @p ~ ~ ~ 10 0.5

execute if entity @s[scores={ete_quete_02=..12}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Je sens une présence étrange par ici. Je ferais mieux de ne pas y aller.*","color":"#8EE9BF"},{"text":"\n "}]

execute if entity @s[scores={ete_quete_02=13}] run setblock 200103 71 -299625 air

execute if entity @s[scores={ete_quete_02=13}] run advancement grant @s only ete_pirates:quetes/quete02/02-14-nature

tp @s[scores={ete_quete_02=13..14}] 200098.5 71 -299620.5 60 0