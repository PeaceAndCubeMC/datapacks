execute if entity @s[tag=paques_labycasque] run scoreboard players add @s paques_cloche 20
execute if entity @s[tag=paques_labypioche] run scoreboard players add @s paques_cloche 20
execute if entity @s[tag=paques_labylanterne] run scoreboard players add @s paques_cloche 20
execute if entity @s[tag=paques_labymineur] run scoreboard players add @s paques_cloche 10
execute if entity @s[tag=paques_labymineur,tag=paques_labypioche,tag=paques_labycasque] run tag @s add paques_laby

tellraw @s ["",{"text":"Fred : ","bold":true,"color":"dark_purple"},{"text":"Merci pour ton aide, voici des cloches pour te remercier !","color":"white"}]

scoreboard players reset @s paques_labytimer

tag @s remove paques_labycasque
tag @s remove paques_labypioche
tag @s remove paques_labylanterne
tag @s remove paques_labyfin
tag @s remove paques_labymineur