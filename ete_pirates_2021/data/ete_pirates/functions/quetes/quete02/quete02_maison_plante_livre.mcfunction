tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Un vieux livre de recette...*","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p {"text":"Commencer par un coquelicot\nAjouter de l\u2019écorce de chêne\nPuis quelques pétales du marais\nLaisser s\u2019y dissoudre quelques grains de pollen\nAjouter une tige gorgées d\u2019eau\nTerminer avec une rose aussi sombre que mortelle\n","color":"#B151B8"}

execute if entity @s[scores={ete_quete_02=3}] run advancement grant @s only ete_pirates:quetes/quete02/02-04-nature