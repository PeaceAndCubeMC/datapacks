execute unless entity @s[scores={ete_quete_01=-1..}] run tellraw @p ["",{"text":"[Pierre]: ","color":"#0da84a"},{"text":" Bondour, moi c'est Bierre *SNIFFF*","color":"#8EE9BF"},{"text":"\n "}]
execute if entity @s[scores={ete_quete_01=..1}] run tellraw @p ["",{"text":"[Pierre]: ","color":"#0da84a"},{"text":" Bondour, moi c'est Bierre *SNIFFF*","color":"#8EE9BF"},{"text":"\n "}]
execute if entity @s[scores={ete_quete_01=3..}] run tellraw @p ["",{"text":"[Pierre]: ","color":"#0da84a"},{"text":" Les étapes à suibre sont expligués en bas si du veux.","color":"#8EE9BF"},{"text":"\n "}]
execute if entity @s[scores={ete_quete_01=4..}] run tellraw @p ["",{"text":"[Pierre]: ","color":"#0da84a"},{"text":" J'ai goudé les boissons que tu nous as prébarés, on dirait que d'as fait ça toute da vie !","color":"#8EE9BF"},{"text":"\n "}]

execute if entity @s[scores={ete_quete_01=2}] run advancement grant @s only ete_pirates:quetes/quete01/01-03-du_bon_rhum