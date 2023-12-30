execute if score @s h23_connaissance_2020 < palier h23_connaissance_2020 unless entity @s[tag=h23_tp_ready] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Je suis maudit... Que des endroits qui fichent les jetons ! Mais, c'est bientôt fini, il ne nous reste plus qu'à avancer de 3 ans. D'ailleurs, tu pourrais aller chercher des connaissances sur l'année 2020 ?","color":"#C5CDB5","bold":false}]

execute if entity @s[tag=h23_tp_ready] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : J'ai bien une idée de l'endroit où on va atterir en 2020 !","color":"#C5CDB5","bold":false}]
execute if entity @s[tag=h23_tp_ready] run tp @s -2997.5 12 -1182.5 0 0

execute if score @s h23_connaissance_2020 >= palier h23_connaissance_2020 unless entity @s[tag=h23_tp_ready] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Il semblerait que tu sois bon pour 2020. Dès que tu es prêt à t'y rendre, reviens me parler !","color":"#C5CDB5","bold":false}]
execute if score @s h23_connaissance_2020 >= palier h23_connaissance_2020 unless entity @s[tag=h23_tp_ready] run tag @s add h23_tp_ready