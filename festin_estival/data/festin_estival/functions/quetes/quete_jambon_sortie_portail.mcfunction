execute if entity @s[advancements={festin_estival:quetes/jambon_hoglins=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Je vais peut-être en tuer un peu plus...","italic":true}]
execute if entity @s[advancements={festin_estival:quetes/jambon_hoglins=false}] run tp @s -1642 89 -398 -90 0
execute if entity @s[advancements={festin_estival:quetes/jambon_hoglins=false}] run advancement revoke @s only festin_estival:quetes/jambon_sortie_portail
execute if entity @s[advancements={festin_estival:quetes/jambon_hoglins=false}] run return -1

execute if entity @s[tag=fe23_quete_jambon] run tp @s -1647 109 -395 -90 0
execute if entity @s[tag=fe23_quete_jambon] run advancement revoke @s only festin_estival:quetes/jambon_sortie_portail