execute if entity @s[advancements={festin_estival:deblocage/menthe=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Augustin Firmier","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Tu te sens mal ? Prends un sucre et retourne en classe !"}]
execute if entity @s[advancements={festin_estival:deblocage/menthe=true}] run return 0

execute unless score @s fe23_menthe matches 0.. run scoreboard players set @s fe23_menthe 0

execute if score @s fe23_menthe matches 0 run function festin_estival:quetes/quete_menthe_dialogue_1

execute if score @s fe23_menthe matches 1 run function festin_estival:quetes/quete_menthe_failed
execute if score @s fe23_menthe matches 2 run function festin_estival:quetes/quete_menthe_dialogue_2
execute if score @s fe23_menthe matches 3 run function festin_estival:quetes/quete_menthe_failed
execute if score @s fe23_menthe matches 4 run function festin_estival:quetes/quete_menthe_failed

execute if score @s fe23_menthe matches 5 run function festin_estival:quetes/quete_menthe_failed
execute if score @s fe23_menthe matches 6 run function festin_estival:quetes/quete_menthe_failed
execute if score @s fe23_menthe matches 7 run function festin_estival:quetes/quete_menthe_failed
execute if score @s fe23_menthe matches 8 run function festin_estival:quetes/quete_menthe_dialogue_3

execute if score @s fe23_menthe matches 9 run function festin_estival:quetes/quete_menthe_dialogue_fin
execute if score @s fe23_menthe matches 10 run function festin_estival:quetes/quete_menthe_failed
execute if score @s fe23_menthe matches 11 run function festin_estival:quetes/quete_menthe_failed
execute if score @s fe23_menthe matches 12 run function festin_estival:quetes/quete_menthe_failed