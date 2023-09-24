execute if entity @s[tag=fe23_quete_maki_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Dustin","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" On dirait que tu as réussi !"}]
execute if entity @s[tag=fe23_quete_maki_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Mike","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" La recette écrite sur le papier est donc celle... des makis !"}]
execute if entity @s[tag=fe23_quete_maki_2] run advancement grant @s only festin_estival:deblocage/maki_saumon
execute if entity @s[tag=fe23_quete_maki_2] run advancement grant @s only festin_estival:deblocage/maki_thon
execute if entity @s[tag=fe23_quete_maki_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ressortons maintenant !"}]
execute if entity @s[tag=fe23_quete_maki_2] run tag @s remove fe23_quete_maki
execute if entity @s[tag=fe23_quete_maki_2] run tag @s remove fe23_quete_maki_2