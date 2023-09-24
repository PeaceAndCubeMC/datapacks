execute if entity @s[tag=fe23_quete_beurre_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Bradley Tier","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oh ! Tu m'as fait peur ! J'ai cru que vous alliez mourir toi et la vache ! Elle est saine et sauve, je te remercie. Je vais la ramener à mon ami près de la laiterie. Retourne le voir à l'occasion."}]
execute if entity @s[tag=fe23_quete_beurre_3] run data modify entity @e[type=minecraft:cow,distance=..15,limit=1,tag=fe23_vache_beurre] NoAI set value 1b
execute if entity @s[tag=fe23_quete_beurre_3] run tp @e[type=minecraft:cow,distance=..15,limit=1,tag=fe23_vache_beurre] -1603.5 149 -256.5
execute if entity @s[tag=fe23_quete_beurre_3] run return 0

execute if entity @s[tag=fe23_quete_beurre] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Bradley Tier","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Tu viens pour m'aider à chercher la vache de mon collègue ? Je pense qu'elle est montée tout en haut... AAAAAAAAH ! UNE BÊTE DANS LES MONTAGNES !"}]
execute if entity @s[tag=fe23_quete_beurre] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Il doit sûrement s'agir de la vache, je vais grimper la chercher...","italic":true}]
#execute if entity @s[tag=fe23_quete_beurre] unless entity @s[tag=fe23_quete_beurre_2] run summon cow -1603.5 149 -256.5 {Invulnerable:1b,NoAI:1b,Tags:["fe23_vache_beurre"]}
execute if entity @s[tag=fe23_quete_beurre] unless entity @s[tag=fe23_quete_beurre_2] run tag @s add fe23_quete_beurre_2

execute unless entity @s[tag=fe23_quete_beurre] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Cet homme semble occupé...","italic":true}]