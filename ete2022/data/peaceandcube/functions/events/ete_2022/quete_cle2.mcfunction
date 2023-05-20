execute if entity @s[scores={ete2022_quete=1},tag=!ete2022_cle2] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"selector":"@s","color":"blue"},{"text":" : ","color":"blue"},{"text":"Une clé !","color":"white"}]

execute if entity @s[scores={ete2022_quete=1},tag=!ete2022_cle2] run scoreboard players add @s ete2022_cle 1

execute if entity @s[scores={ete2022_quete=1},tag=ete2022_cle2] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"selector":"@s","color":"blue"},{"text":" : ","color":"blue"},{"text":"J'ai déjà ramassé cette clé...","color":"white"}]

execute if entity @s[scores={ete2022_quete=1},tag=!ete2022_cle2] run tag @s add ete2022_cle2