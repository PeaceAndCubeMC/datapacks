execute if entity @s[scores={ete_quete_01=5..}] run tellraw @p ["",{"text":"[Gérant de la brasserie]: ","color":"#0da84a"},{"text":" Bienvenue à la brasserie BarbeMousse. Alors, le rhum a bien été livré ?","color":"#8EE9BF"},{"text":"\n "}]
execute if entity @s[scores={ete_quete_01=..0}] run tellraw @p ["",{"text":"[Gérant de la brasserie]: ","color":"#0da84a"},{"text":" Bienvenue à la brasserie BarbeMousse.","color":"#8EE9BF"},{"text":"\n "}]
execute unless entity @s[scores={ete_quete_01=-1..}] run tellraw @p ["",{"text":"[Gérant de la brasserie]: ","color":"#0da84a"},{"text":" Bienvenue à la brasserie BarbeMousse.","color":"#8EE9BF"},{"text":"\n "}]
execute if entity @s[scores={ete_quete_01=2..3}] run tellraw @p ["",{"text":"[Gérant de la brasserie]: ","color":"#0da84a"},{"text":" Va voir Pierre à l'étage, il va t'expliquer comment on fabrique nos meilleurs aclools.","color":"#8EE9BF"},{"text":"\n "}]

execute if entity @s[scores={ete_quete_01=1}] run advancement grant @s only ete_pirates:quetes/quete01/01-02-du_bon_rhum
execute if entity @s[scores={ete_quete_01=4}] run advancement grant @s only ete_pirates:quetes/quete01/01-05-du_bon_rhum