execute if score @s h23_connaissance_2018 < palier h23_connaissance_2018 unless entity @s[tag=h23_tp_ready] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Encore Halloween, mais celui-là était cool. C'était sympa de revoir ce bon vieux spawn. Pour la suite, je te laisse récupérer des connaissances sur l'année 2018, toujours sur ces monstres qui grouillent dans le gouffre.","color":"#C5CDB5","bold":false}]

execute if entity @s[tag=h23_tp_ready] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Pitié, pitié, un endroit calme s'il vous plaît !","color":"#C5CDB5","bold":false}]
execute if entity @s[tag=h23_tp_ready] run tp @s -2980.5 21 -851.5 52 23

execute if score @s h23_connaissance_2018 >= palier h23_connaissance_2018 unless entity @s[tag=h23_tp_ready] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Déjà ? T'étais bien motivé pour l'année 2018. Dès que tu es prêt à t'y rendre, reviens me parler !","color":"#C5CDB5","bold":false}]
execute if score @s h23_connaissance_2018 >= palier h23_connaissance_2018 unless entity @s[tag=h23_tp_ready] run tag @s add h23_tp_ready