execute if score @s h23_connaissance_2019 < palier h23_connaissance_2019 unless entity @s[tag=h23_tp_ready] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Bon, y avait plus calme comme endroit. Mais on s'y fait, il a été actif pendant bien des années ! L'année 2019 nous attend, va vite récolter des données dans le gouffre !","color":"#C5CDB5","bold":false}]

execute if entity @s[tag=h23_tp_ready] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : C'est parti pour 2019 ! Ça sert plus à rien d'espérer un endroit calme...","color":"#C5CDB5","bold":false}]
execute if entity @s[tag=h23_tp_ready] run tp @s -3096.5 52 -363.5 -90 0

execute if score @s h23_connaissance_2019 >= palier h23_connaissance_2019 unless entity @s[tag=h23_tp_ready] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Ta jauge de connaissances sur l'année 2019 est pleine ! Dès que tu es prêt à t'y rendre, reviens me parler !","color":"#C5CDB5","bold":false}]
execute if score @s h23_connaissance_2019 >= palier h23_connaissance_2019 unless entity @s[tag=h23_tp_ready] run tag @s add h23_tp_ready