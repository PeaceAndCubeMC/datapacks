execute if entity @s[scores={ete_quete_02=2..3}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *La porte ne veut pas s'ouvrir. Quelque chose me dit que je trouverai plus d'informations dans la maison abandonnée du village.*","color":"#8EE9BF"},{"text":"\n "}]

execute if entity @s[scores={ete_quete_02=4}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Le vieille recette que j'ai trouvé peut sûrement m'aider...*","color":"#8EE9BF"},{"text":"\n "}]

execute if entity @s[scores={ete_quete_02=5}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Ces grottes tournent dans tout les sens. Mieux vaut ne pas se perdre dedans.*","color":"#8EE9BF"},{"text":"\n "}]
tellraw @s[scores={ete_quete_02=5}] {"text":"GrrRRrrr!\n","color":"#B151B8"}
execute at @s[scores={ete_quete_02=5}] run playsound minecraft:entity.zombie.ambient master @p ~ ~ ~ 10 1
execute at @s[scores={ete_quete_02=5}] run playsound minecraft:entity.silverfish.ambient master @p ~ ~ ~ 10 1
execute if entity @s[scores={ete_quete_02=5}] run tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Des bruits peu rassurants. Essayons de continuer sans croiser ces créatures.*","color":"#8EE9BF"},{"text":"\n "}]

execute if entity @s[scores={ete_quete_02=2}] run advancement grant @s only ete_pirates:quetes/quete02/02-03-nature

tp @s[scores={ete_quete_02=5..}] 200044 88 -299673 0 0