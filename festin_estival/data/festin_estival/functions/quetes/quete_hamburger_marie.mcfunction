execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 15 run tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Marie Basmati","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ce n'est pas la bonne réponse !"}]
execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 16 run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Marie Basmati","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" C'est la bonne réponse ! Va voir Latifa Rine."}]
execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 14..15 run function festin_estival:quetes/quete_hamburger_question_8
execute if entity @s[tag=fe23_quete_hamburger_2] if score @s fe23_hamburger matches 14..16 run return 0

tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Marie Basmati","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Te laisse pas arnaquer par Bernard Naqueur !"}]