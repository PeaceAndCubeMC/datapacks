execute as @s run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Un quizz sur une époque si lointaine ? Même avec tout ce que je sais, je ne sais pas si j'aurais réussi !","color":"#C5CDB5","bold":false}]

advancement grant @s only halloween2023:poi/halloween_2016 epreuve

scoreboard players set @s h23_avancee 3

tag @s remove h23_tp_ready

tp @s -3003.5 37 -38.5 180 0