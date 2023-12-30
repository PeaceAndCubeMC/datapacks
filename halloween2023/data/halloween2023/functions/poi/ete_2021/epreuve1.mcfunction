execute as @s run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Une fois qu'on en aura fini avec cette histoire, j'irai passer du bon temps dans cette grotte au spawn !","color":"#C5CDB5","bold":false}]

advancement grant @s only halloween2023:poi/ete_2021 epreuve

scoreboard players set @s h23_avancee 8

tag @s remove h23_tp_ready

tp @s -2979.5 -1 -38.5 180 0