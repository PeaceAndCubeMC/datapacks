execute unless entity @s[scores={ete_quete_01=-1..}] run tellraw @p ["",{"text":"[Barman]: ","color":"#0da84a"},{"text":" Bienvenue au bar du Bat'O'Berge. Je vous sers quelque chose ?","color":"#8EE9BF"},{"text":"\n "}]
execute if entity @s[scores={ete_quete_01=1..4}] run tellraw @p ["",{"text":"[Barman]: ","color":"#0da84a"},{"text":" Les stocks sont presque vides. J'espère que la brasserie du village va vite nous réapprovisionner.","color":"#8EE9BF"},{"text":"\n "}]
execute if entity @s[scores={ete_quete_01=6..}] run tellraw @p ["",{"text":"[Barman]: ","color":"#0da84a"},{"text":" Bienvenue au bar du Bat'O'Berge. Du rhum ? de la bierre ? Nous avons de tout ici !","color":"#8EE9BF"},{"text":"\n "}]

execute if entity @s[scores={ete_quete_01=0}] run advancement grant @s only ete_pirates:quetes/quete01/01-01-du_bon_rhum
execute if entity @s[scores={ete_quete_01=5}] run advancement grant @s only ete_pirates:quetes/quete01/01-06-du_bon_rhum