tag @s remove ete2022_hint1
tag @s remove ete2022_hint2
tag @s remove ete2022_hint3

execute if entity @s[scores={ete2022_quete=..6}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"text":"Sacha Lutier : ","color":"aqua"},{"text":"Quel désastre, le village s'est fait attaqué. Si tu trouve des informations sur les pirates qui ont fait ça, vient me voir !","color":"white"}]

execute unless entity @s[scores={ete2022_quete=-1..}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"text":"Sacha Lutier : ","color":"aqua"},{"text":"Quel désastre, le village s'est fait attaqué. Si tu trouve des informations sur les pirates qui ont fait ça, vient me voir !","color":"white"}]

execute if entity @s[scores={ete2022_quete=7}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"selector":"@s","color":"blue"},{"text":" : ","color":"blue"},{"text":"Capitaine, je sais qui a ordonné le pillage des maisons sur la plage ! Il s'agit de Lord O'Nance, j'ai trouvé une lettre à son nom dans un repère pirate dans une grotte sous la plage. Il faut vite agir !","color":"white"}]

execute if entity @s[scores={ete2022_quete=7}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"text":"Sacha Lutier : ","color":"aqua"},{"text":"Le scélérat, je me disais bien qu'il ne me disait rien de bon ! On ne peut rien cacher à un vieux loup de mer comme moi !","color":"white"}]

execute if entity @s[scores={ete2022_quete=7}] run scoreboard players set @s ete2022_quete 8

execute if entity @s[scores={ete2022_quete=8}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"text":"Sacha Lutier : ","color":"aqua"},{"text":"Retrouve moi devant le Bat'O'Berge, je vais appeler mes hommes. On va s'occuper de ce Lord O'Nance !","color":"white"}]

execute if entity @s[scores={ete2022_quete=8}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"]","color":"dark_green"},{"text":" ","color":"blue"},{"text":"Objectif Principal :","italic":true,"underlined":true,"color":"light_purple"},{"text":" Retrouver le capitaine sur le pic rocheux devant l'entrée du Bat'O'Berge.","italic":true,"color":"aqua"}]