execute if entity @s[scores={ete_quete_02=18}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Je devrais laisser la Dryade se reposer. Ca a dû être éprouvant pour elle.*","color":"#8EE9BF"},{"text":"\n "}]

execute if entity @s[scores={ete_quete_02=16}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Un... MUTANT ?!?*","color":"#8EE9BF"},{"text":"\n "}]
execute at @s if entity @s[scores={ete_quete_02=16}] run playsound minecraft:entity.goat.screaming.prepare_ram master @p ~ ~ ~ 10 0.5

execute if entity @s[scores={ete_quete_02=..14}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *La même aura que tout à l'heure ne veut pas me laisser passer. Je devrais continuer d'explorer la grotte.*","color":"#8EE9BF"},{"text":"\n "}]

execute if entity @s[scores={ete_quete_02=15}] run setblock 200079 52 -299628 air

tp @s[scores={ete_quete_02=15}] 200075.5 51 -299629.5 130 0

execute if entity @s[scores={ete_quete_02=15}] run advancement grant @s only ete_pirates:quetes/quete02/02-16-nature

