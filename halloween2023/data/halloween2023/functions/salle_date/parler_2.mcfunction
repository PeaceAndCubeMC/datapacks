execute if score @s h23_connaissance_2016 < palier h23_connaissance_2016 unless entity @s[tag=h23_tp_ready] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Let's go, ça a encore marché pour 2015 ! On continue avec 2016, va récupérer des connaissances sur les créatures du gouffre.","color":"#C5CDB5","bold":false}]

execute if entity @s[tag=h23_tp_ready] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : 2016, prêts, feu, partez !","color":"#C5CDB5","bold":false}]
execute if entity @s[tag=h23_tp_ready] run tp @s -2950.5 3 -992.5 90 0

execute if score @s h23_connaissance_2016 >= palier h23_connaissance_2016 unless entity @s[tag=h23_tp_ready] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : C'est bon, tu en connais assez sur l'année 2016. Dès que tu es prêt à t'y rendre, reviens me parler !","color":"#C5CDB5","bold":false}]
execute if score @s h23_connaissance_2016 >= palier h23_connaissance_2016 unless entity @s[tag=h23_tp_ready] run tag @s add h23_tp_ready