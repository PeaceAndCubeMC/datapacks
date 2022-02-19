execute if entity @s[scores={ete_quete_02=18}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *En y repensant, cette maison devait être importante pour la Dryade.*","color":"#8EE9BF"},{"text":"\n "}]
execute if entity @s[scores={ete_quete_02=0..17}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *La tombe de Pac'O'Tille ? Je dois trouver d'où vient cette voix.*","color":"#8EE9BF"},{"text":"\n "}]


execute unless entity @s[scores={ete_quete_02=-1..}] run advancement grant @s only ete_pirates:quetes/quete02/02-00-nature
