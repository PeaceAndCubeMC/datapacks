execute as @s run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Un petit jump, rien de mieux pour se dégourdir les jambes. On avance bien, on a dépassé la moitié ! À nous 2019 !","color":"#C5CDB5","bold":false}]

advancement grant @s only halloween2023:poi/aom_2018 epreuve

scoreboard players set @s h23_avancee 5

tag @s remove h23_tp_ready

tp @s -3003.5 -1 -38.5 180 0