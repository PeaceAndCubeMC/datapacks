scoreboard players set @s fe23_frites 0

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Les frites françaises sont trop fines, elles grillent trop vite. Certains aiment bien, mais je préfère quand il y a un côté moelleux."}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Émile de France","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Elles grillent trop vite ? Ce n'est pas des frites françaises que vous avez mangé, je vous le dis !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oups, j'ai fait empirer la dispute...","italic":true}]

execute at @s run tp @s ~-2 ~ ~