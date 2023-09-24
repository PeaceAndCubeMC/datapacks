scoreboard players set @s fe23_frites 0

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Il n'y a pas d'heure pour manger un bon cornet de frites, c'est encore mieux avec les doigts !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Émile de France","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Un désastre..."}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oups, j'ai fait empirer la dispute...","italic":true}]

execute at @s run tp @s ~-2 ~ ~