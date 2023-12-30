execute as @s run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Ah te voilà ! Je commençais à me demander si j'allais te revoir un jour...","color":"#C5CDB5","bold":false}]

advancement grant @s only halloween2023:poi/deroute epreuve

scoreboard players set @s h23_avancee 1

tag @s remove h23_tp_ready

tp @s -3027.5 18 -38.5 180 0