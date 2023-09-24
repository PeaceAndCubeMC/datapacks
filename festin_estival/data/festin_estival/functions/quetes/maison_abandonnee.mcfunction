execute if entity @s[advancements={festin_estival:deblocage/vin_rouge=false,festin_estival:deblocage/jus_raisin=false}] run function festin_estival:quetes/quete_vin_rouge
execute if entity @s[advancements={festin_estival:deblocage/vin_rouge=false,festin_estival:deblocage/jus_raisin=false}] run return 0

execute if entity @s[advancements={festin_estival:deblocage/maki_saumon=false}] run function festin_estival:quetes/quete_maki
execute if entity @s[advancements={festin_estival:deblocage/maki_saumon=false}] run return 0

execute if entity @s[advancements={festin_estival:deblocage/beignet_oignon=false}] run function festin_estival:quetes/quete_beignet_oignon
execute if entity @s[advancements={festin_estival:deblocage/beignet_oignon=false}] run return 0

execute if entity @s[advancements={festin_estival:deblocage/hamburger=false}] run function festin_estival:quetes/quete_hamburger
execute if entity @s[advancements={festin_estival:deblocage/hamburger=false}] run return 0

tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Mike","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ce fut un plaisir d'explorer cette maison avec toi !"}]