execute if score @s h23_connaissance_2015 < palier h23_connaissance_2015 unless entity @s[tag=h23_tp_ready] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Regarde, ce qu'on vient de faire a l'air de fonctionner ! La date sur le mur ! On a gagné une année ! Il faut donc bien rassembler les connaissances sur ces années manquantes pour revenir en 2023.\nVa récolter des nouvelles connaissances sur l'année 2015 en tuant des créatures du gouffre. J'ai mis à jour ton affichage au-dessus de ta barre d'action.","color":"#C5CDB5","bold":false}]

execute if entity @s[tag=h23_tp_ready] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : 2015, nous voilààààà !","color":"#C5CDB5","bold":false}]
execute if entity @s[tag=h23_tp_ready] run tp @s -3039.5 -35 -94.5 -90 0

execute if score @s h23_connaissance_2015 >= palier h23_connaissance_2015 unless entity @s[tag=h23_tp_ready] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Super, notre plan fonctionne. On va vite revenir en 2023.\nAh, t'es là ! Je vois que t'as assez de connaissances pour plonger dans l'année 2015. Dès que tu es prêt à t'y rendre, reviens me parler !","color":"#C5CDB5","bold":false}]
execute if score @s h23_connaissance_2015 >= palier h23_connaissance_2015 unless entity @s[tag=h23_tp_ready] run tag @s add h23_tp_ready