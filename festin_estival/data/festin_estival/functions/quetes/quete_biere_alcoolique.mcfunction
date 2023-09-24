execute unless entity @s[tag=fe23_quete_biere_2] unless entity @s[tag=fe23_quete_biere_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Cet homme a visiblement trop bu, il tient à peine debout...","italic":true}]
execute unless entity @s[tag=fe23_quete_biere_2] unless entity @s[tag=fe23_quete_biere_3] run return -1

execute if entity @s[tag=fe23_quete_biere_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Pascal Coolique","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bière... *hips* BIÈRE ! Laissez-moi entrer, j'ai dit bière ! *hips*"}]
execute if entity @s[tag=fe23_quete_biere_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Décidément, il en veut de la bière... De la bière. De la BIÈRE ? Mais c'est bien sûr !","italic":true}]

execute if entity @s[tag=fe23_quete_biere_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Pascal Coolique","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bière... *hips* BIÈRE ! Laissez-moi entrer, j'ai dit bière ! *hips*"}]
execute if entity @s[tag=fe23_quete_biere_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Décidément, il en veut de la bière... De la bière. De la BIÈRE ? Mais c'est bien sûr !","italic":true}]
execute if entity @s[tag=fe23_quete_biere_2] run tag @s add fe23_quete_biere_3
execute if entity @s[tag=fe23_quete_biere_2] run tag @s remove fe23_quete_biere_2