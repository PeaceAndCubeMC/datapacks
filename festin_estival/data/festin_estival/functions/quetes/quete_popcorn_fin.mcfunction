execute if entity @s[tag=fe23_quete_popcorn_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oh, du popcorn !","italic":true}]
execute if entity @s[tag=fe23_quete_popcorn_2] run advancement grant @s only festin_estival:deblocage/popcorn_sucre
execute if entity @s[tag=fe23_quete_popcorn_2] run advancement grant @s only festin_estival:deblocage/popcorn_sale
execute if entity @s[tag=fe23_quete_popcorn_2] run tag @s remove fe23_quete_popcorn_2