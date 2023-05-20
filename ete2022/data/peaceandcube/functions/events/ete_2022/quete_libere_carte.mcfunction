execute if entity @s[scores={ete2022_quete=6..}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"selector":"@s","color":"blue"},{"text":" : ","color":"blue"},{"text":"Laissez moi vous libérer !","color":"white"}]

execute if entity @s[scores={ete2022_quete=6..}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"text":"Carlo Graff : ","color":"dark_purple"},{"text":"Merci ! J'ai cru que j'allais mourir ici. Je vais vite sortir de là ! Viens me voir en ville, je tiens une échoppe de cartes qui pourraient t'interesser.","color":"white"}]

execute if entity @s[scores={ete2022_quete=6..}] run tag @s add ete2022_cartographe
