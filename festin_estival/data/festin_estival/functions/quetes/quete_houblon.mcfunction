execute if entity @s[advancements={festin_estival:deblocage/houblon=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Sarah Griculteur","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Merci beaucoup, tu as sauvé ma récolte !"}]

execute if entity @s[tag=fe23_quete_houblon] if entity @s[advancements={festin_estival:quetes/houblon=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Sarah Griculteur","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Aide-moi, c'est urgent ! Entre dans leur terrier !"}]

execute if entity @s[tag=fe23_quete_houblon] if entity @s[advancements={festin_estival:quetes/houblon=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Sarah Griculteur","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Merci infiniment ! Voici un outil pour récolter du houblon. Parle à mon camarade si tu veux en savoir plus sur la récolte du houblon !"}]
execute if entity @s[tag=fe23_quete_houblon] if entity @s[advancements={festin_estival:quetes/houblon=true}] run give @s golden_hoe{display:{Name:'{"text":"Faux à houblon","color":"#CFDD7B","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Cet outil permet de récolter du houblon","color":"gray","italic":false}','{"text":"à la place du blé.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_faux_houblon"],Enchantments:[{id:"minecraft:unbreaking",lvl:10s}]} 1
execute if entity @s[tag=fe23_quete_houblon] if entity @s[advancements={festin_estival:quetes/houblon=true}] run advancement grant @s only festin_estival:deblocage/houblon
execute if entity @s[tag=fe23_quete_houblon] if entity @s[advancements={festin_estival:quetes/houblon=true}] run tag @s remove fe23_quete_houblon

execute unless entity @s[tag=fe23_quete_houblon] if entity @s[advancements={festin_estival:deblocage/houblon=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Sarah Griculteur","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oh non, ma récolte ! Des rats ont envahi mon champ et sont en train de le saccager ! Trouve leur terrier s'il te plaît !"}]
execute unless entity @s[tag=fe23_quete_houblon] if entity @s[advancements={festin_estival:deblocage/houblon=false}] run tag @s add fe23_quete_houblon