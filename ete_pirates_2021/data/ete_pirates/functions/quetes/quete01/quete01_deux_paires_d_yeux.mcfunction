execute if entity @s[scores={ete_quete_01=0..5}] run tellraw @p ["",{"text":"[Le vieux Deux paires d'Yeux]: ","color":"#0da84a"},{"text":" Pas de bierre, pas d'histoire.","color":"#8EE9BF"},{"text":"\n "}]
execute if entity @s[scores={ete_quete_01=7..}] run tellraw @p ["",{"text":"[Le vieux Deux paires d'Yeux]: ","color":"#0da84a"},{"text":" Alors ? Elle te plaît cette histoire ? C'est qu'une légende, ne perd pas ton temps avec ça.","color":"#8EE9BF"},{"text":"\n "}]

execute unless entity @s[scores={ete_quete_01=-1..}] run advancement grant @s only ete_pirates:quetes/quete01/01-00-du_bon_rhum

execute if entity @s[scores={ete_quete_01=6}] run advancement grant @s only ete_pirates:quetes/quete01/01-07-du_bon_rhum
