execute unless entity @s[scores={ete_quete_02=-1..}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Je ne pense pas que ce soit le bon moment de m'aventurer par ici.*","color":"#8EE9BF"},{"text":"\n "}]

execute if entity @s[scores={ete_quete_02=..0}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Je ne pense pas que ce soit le bon moment de m'aventurer par ici.*","color":"#8EE9BF"},{"text":"\n "}]

execute if entity @s[scores={ete_quete_02=1}] run advancement grant @s only ete_pirates:quetes/quete02/02-02-nature

tp @s[scores={ete_quete_02=1..}] 200033.5 98 -299697.5 -90 0