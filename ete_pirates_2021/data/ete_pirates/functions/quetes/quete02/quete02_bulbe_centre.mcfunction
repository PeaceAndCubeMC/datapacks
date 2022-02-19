execute if entity @s[scores={ete_quete_02=15..}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *L'énergie qu'émet ce bulbe à beaucoup baissée.*","color":"#8EE9BF"},{"text":"\n "}]
execute if entity @s[scores={ete_quete_02=13..14}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *D'après le bruit que j'ai entendu, ces bulbes étaient aussi liés à une créature...*","color":"#8EE9BF"},{"text":"\n "}]
execute if entity @s[scores={ete_quete_02=11..12}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Ce bulbe doit être le centre d'un réseau de végétaux. Je dois détruire ses sources d'énergie.*","color":"#8EE9BF"},{"text":"\n "}]

execute if entity @s[scores={ete_quete_02=10}] run advancement grant @s only ete_pirates:quetes/quete02/02-11-nature
