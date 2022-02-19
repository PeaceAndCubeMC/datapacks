execute if entity @s[scores={ete_quete_01=10..}] run tp @p 200236.5 130 -299629.4 0 90

execute if entity @s[scores={ete_quete_01=8}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Hmm, c'est toujours bloqué...*","color":"#8EE9BF"},{"text":"\n"}]

execute if entity @s[scores={ete_quete_01=7}] run advancement grant @s only ete_pirates:quetes/quete01/01-08-du_bon_rhum
execute if entity @s[scores={ete_quete_01=9}] run advancement grant @s only ete_pirates:quetes/quete01/01-10-du_bon_rhum