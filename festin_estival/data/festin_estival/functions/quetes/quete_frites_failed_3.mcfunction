scoreboard players set @s fe23_frites 0

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Les frites sont tellement meilleures en Belgique, c'est évident qu'elles sont belges, peu importe leur origine supposée !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Émile de France","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Balivernes !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oups, j'ai fait empirer la dispute...","italic":true}]

execute at @s run tp @s ~-2 ~ ~