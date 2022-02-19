execute if entity @s[scores={ete_quete_02=10}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *La nature est beaucoup plus dense par ici.*","color":"#8EE9BF"},{"text":"\n "}]

execute if entity @s[scores={ete_quete_02=5..9}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Une autre porte ? Celle-ci dégage une aura semblable aux monstres que j'ai croisé. Si j'en élimine quelque uns, peut-être que ça affaiblira l'aura de la porte.*","color":"#8EE9BF"},{"text":"\n "}]

execute if entity @s[scores={ete_quete_02=5}] run advancement grant @s only ete_pirates:quetes/quete02/02-06-nature

tp @s[scores={ete_quete_02=10..}] 200077.5 77 -299652.5 -45 15