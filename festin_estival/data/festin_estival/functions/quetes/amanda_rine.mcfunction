execute if entity @s[advancements={festin_estival:deblocage/salade_verte=false}] run function festin_estival:quetes/quete_marchande
execute if entity @s[advancements={festin_estival:deblocage/salade_verte=false}] run return 0

execute if entity @s[advancements={festin_estival:deblocage/oignon=false}] run function festin_estival:quetes/quete_oignon
execute if entity @s[advancements={festin_estival:deblocage/oignon=false}] run return 0

tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Amanda Rine","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" La boutique d'Enzo Tique te permet d'acheter des fruits et légumes contre de l'engrais. Tu peux récupérer cet engrais en tuant des créatures dans la mine et dans la forêt."}]