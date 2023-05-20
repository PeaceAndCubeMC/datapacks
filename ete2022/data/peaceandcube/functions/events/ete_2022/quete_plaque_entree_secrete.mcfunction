execute if score daytime ete2022_daytime matches 13000.. if entity @s[scores={ete2022_quete=5..}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"selector":"@s","color":"blue"},{"text":" : ","color":"blue"},{"text":"C'est bon, je suis entré dans le passage, il doit bien mener quelque part. Je dois faire attention...","color":"white"}]

execute if score daytime ete2022_daytime matches 13000.. if entity @s[scores={ete2022_quete=5..}] run tp @s ~1 ~-2 ~-1

execute if score daytime ete2022_daytime matches 13000.. if entity @s[scores={ete2022_quete=5..}] run tag @s add ete2022_cherche_indice

execute if score daytime ete2022_daytime matches ..12999 if entity @s[scores={ete2022_quete=5..}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"selector":"@s","color":"blue"},{"text":" : ","color":"blue"},{"text":"Un passage secret caché entre les marchandises ! Je ne devrais pas l'emprunter maintenant, il fait encore trop jour, on risquerait de me voir.","color":"white"}]

execute if entity @s[scores={ete2022_quete=..4}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"selector":"@s","color":"blue"},{"text":" : ","color":"blue"},{"text":"Il y a beaucoup de marchandises ici.","color":"white"}]

execute unless entity @s[scores={ete2022_quete=-1..}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"selector":"@s","color":"blue"},{"text":" : ","color":"blue"},{"text":"Il y a beaucoup de marchandises ici.","color":"white"}]
