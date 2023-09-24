execute if entity @s[advancements={festin_estival:deblocage/vanille=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Xavier Picier","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bienvenue dans mon épicerie ! Que puis-je pour toi ?"}]

execute if entity @s[tag=fe23_quete_vanille] unless entity @s[tag=fe23_quete_vanille_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Xavier Picier","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Mon stock de vanille a été volé. Trouve l'habitant qui en tient en main !"}]

execute if entity @s[tag=fe23_quete_vanille] if entity @s[tag=fe23_quete_vanille_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Xavier Picier","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Merci beaucoup ! Tu peux garder un peu de vanille."}]
execute if entity @s[tag=fe23_quete_vanille] if entity @s[tag=fe23_quete_vanille_3] run advancement grant @s only festin_estival:deblocage/vanille
execute if entity @s[tag=fe23_quete_vanille] if entity @s[tag=fe23_quete_vanille_3] run tag @s remove fe23_quete_vanille_2
execute if entity @s[tag=fe23_quete_vanille] if entity @s[tag=fe23_quete_vanille_3] run tag @s remove fe23_quete_vanille_3
execute if entity @s[tag=fe23_quete_vanille] if entity @s[advancements={festin_estival:deblocage/vanille=true}] run tag @s remove fe23_quete_vanille

execute unless entity @s[tag=fe23_quete_vanille] if entity @s[advancements={festin_estival:deblocage/vanille=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Xavier Picier","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Salut ! J'avais une toute nouvelle plante à mettre en vente, mais mon stock a été volé... Tu pourrais la trouver dans la ville ? Cette plante s'appelle la vanille."}]
execute unless entity @s[tag=fe23_quete_vanille] if entity @s[advancements={festin_estival:deblocage/vanille=false}] run tag @s add fe23_quete_vanille