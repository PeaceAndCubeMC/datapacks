execute unless score @s h23_cravebi matches 0.. run scoreboard players set @s h23_cravebi 0

execute unless entity @s[tag=h23_tp_ready] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Et voilà, nous sommes enfin revenus dans le présent, en 2023. Un grand merci pour ton aide !\nSi tu souhaites faire durer le plaisir un peu plus longtemps, j'ai retrouvé le fichier correspondant au Cravebi. Tu peux maintenant l'affronter 2 fois par jour !","color":"#C5CDB5","bold":false}]

execute if score @s h23_cravebi matches 2.. run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Tu as déjà affronté le Cravebi suffisamment de fois. Reviens me voir demain !","color":"#C5CDB5","bold":false}]
execute if score @s h23_cravebi matches 2.. run return 0

execute if score @s h23_cravebi matches ..1 positioned -3003 54 -1392 if entity @a[distance=..70] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Un hippie est déjà d'affronter le Cravebi, reviens me voir plus tard !","color":"#C5CDB5","bold":false}]

execute if score @s h23_cravebi matches ..1 if entity @s[tag=h23_tp_ready] positioned -3003 54 -1392 unless entity @a[distance=..70] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : C'est parti pour le Cravebi ! Bonne chance !","color":"#C5CDB5","bold":false}]
execute if score @s h23_cravebi matches ..1 if entity @s[tag=h23_tp_ready] positioned -3003 54 -1392 unless entity @a[distance=..70] run function halloween2023:boss/entrer

execute if score @s h23_cravebi matches ..1 unless entity @s[tag=h23_tp_ready] positioned -3003 54 -1392 unless entity @a[distance=..70] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Tu peux encore affronter le Cravebi aujourd'hui. Reviens me voir quand tu veux commencer !","color":"#C5CDB5","bold":false}]
execute if score @s h23_cravebi matches ..1 unless entity @s[tag=h23_tp_ready] positioned -3003 54 -1392 unless entity @a[distance=..70] run tag @s add h23_tp_ready