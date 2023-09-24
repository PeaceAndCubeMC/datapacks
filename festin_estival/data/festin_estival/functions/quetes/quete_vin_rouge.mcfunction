execute unless entity @s[advancements={festin_estival:deblocage/raisin=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ils semblent occupés, je repasserai plus tard...","italic":true}]
execute unless entity @s[advancements={festin_estival:deblocage/raisin=true}] run return -1

execute if entity @s[tag=fe23_quete_vin_rouge] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Will","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Va dans la cave, s'il te plaît !"}]
execute if entity @s[tag=fe23_quete_vin_rouge] run return 0

execute unless entity @s[tag=fe23_quete_vin_rouge] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Will","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Salut !"}]
execute unless entity @s[tag=fe23_quete_vin_rouge] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Dustin","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" On a reperé cette maison abandonnée l'autre jour, et on voulait faire de l'urbex dedans..."}]
execute unless entity @s[tag=fe23_quete_vin_rouge] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Mike","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Mais on ose pas rentrer dans la cave, y a du bruit à l'intérieur..."}]
execute unless entity @s[tag=fe23_quete_vin_rouge] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Lucas","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Pourrais-tu y aller avant nous pour voir ce qu'il y a ?"}]
execute unless entity @s[tag=fe23_quete_vin_rouge] run tag @s add fe23_quete_vin_rouge