execute unless entity @s[advancements={festin_estival:deblocage/huile_tournesol=true,festin_estival:deblocage/sel=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ces deux messieurs semblent énervés, je repasserai plus tard...","italic":true}]
execute unless entity @s[advancements={festin_estival:deblocage/huile_tournesol=true,festin_estival:deblocage/sel=true}] run return -1

execute if entity @s[advancements={festin_estival:deblocage/frites=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Émile de France","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Hmmm, elles sont bien croustillantes ces frites..."}]
execute if entity @s[advancements={festin_estival:deblocage/frites=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Barnabé Lege","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Et bien grasses !"}]
execute if entity @s[advancements={festin_estival:deblocage/frites=true}] run return 0

execute unless score @s fe23_frites matches 0.. run scoreboard players set @s fe23_frites 0

execute if score @s fe23_frites matches 0 run function festin_estival:quetes/quete_frites_dialogue_1
execute if score @s fe23_frites matches 1 run function festin_estival:quetes/quete_frites_dialogue_2
execute if score @s fe23_frites matches 6 run function festin_estival:quetes/quete_frites_dialogue_3
execute if score @s fe23_frites matches 9 run function festin_estival:quetes/quete_frites_dialogue_fin

execute if score @s fe23_frites matches 2 run function festin_estival:quetes/quete_frites_failed_2
execute if score @s fe23_frites matches 3 run function festin_estival:quetes/quete_frites_failed_3
execute if score @s fe23_frites matches 4 run function festin_estival:quetes/quete_frites_failed_4
execute if score @s fe23_frites matches 5 run function festin_estival:quetes/quete_frites_failed_5
execute if score @s fe23_frites matches 7 run function festin_estival:quetes/quete_frites_failed_7
execute if score @s fe23_frites matches 8 run function festin_estival:quetes/quete_frites_failed_8