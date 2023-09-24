scoreboard players set @s fe23_frites 0

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Les frites doivent être l'accompagnement d'un bon plat. Elles se mangent avec une bonne viande au déjeuner ou au dîner."}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Barnabé Lege","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" On doit pas parler des mêmes frites ! Les frites ça se mange n'importe quand !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oups, j'ai fait empirer la dispute...","italic":true}]

execute at @s run tp @s ~-2 ~ ~