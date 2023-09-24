scoreboard players set @s fe23_frites 0

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Les frites sont traduites en « french fries » à l'international, c'est donc logique de les considérer comme françaises !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Barnabé Lege","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" « French fries » ?! C'est de l'appropriation culturelle !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oups, j'ai fait empirer la dispute...","italic":true}]

execute at @s run tp @s ~-2 ~ ~