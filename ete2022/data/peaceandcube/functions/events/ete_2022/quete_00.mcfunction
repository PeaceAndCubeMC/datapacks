execute unless score @s ete2022_quete matches -1.. run scoreboard players set @s ete2022_quete 0

execute if score @s ete2022_quete matches 0 run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"text":"Sébastien Labbard : ","color":"yellow"},{"text":"Toi ! Étranger, aide moi je t'en supplie... Ces pirates ont brulé ma précieuse maison. Va voir le Lord O'Nance, il saura faire quelque chose.\nSon château est situé sur une petite île à l'ouest du phare."}]

execute if score @s ete2022_quete matches 0 run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"text":"Objectif Principal :","italic":true,"underlined":true,"color":"light_purple"},{"text":" Aller voir le Lord O'Nance dans son château.","italic":true,"color":"aqua"}]

execute if entity @s[scores={ete2022_quete=1..}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"text":"Sébastien Labbard : ","color":"yellow"},{"text":"Ma maisoooonn! Nooooon !!! *snifffff*"}]