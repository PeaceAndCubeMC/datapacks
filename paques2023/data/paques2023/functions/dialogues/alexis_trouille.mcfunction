execute if entity @s[tag=paques2023_q2] run tellraw @s ["",{"text":"[","color":"gray"},{"selector":"@s","color":"#54A448"},{"text":"]","color":"gray"},{"text":" Est-ce que cet homme te dit quelque chose ?","color":"#FFFCB9"}]
execute if entity @s[tag=paques2023_q2] run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Alexis Trouille","color":"#54A448"},{"text":"]","color":"gray"},{"text":" J'ai l'impression de l'avoir vu dans un rêve... Peut-être que ce n'était pas un rêve...","color":"#FFFCB9"}]

execute unless entity @s[tag=paques2023_q2] run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Alexis Trouille","color":"#54A448"},{"text":"]","color":"gray"},{"text":" Bon bah voilà, 2 ans de plus à ramasser des citrouilles !","color":"#FFFCB9"}]