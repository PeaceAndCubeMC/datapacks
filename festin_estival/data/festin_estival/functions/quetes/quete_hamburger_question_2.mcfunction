scoreboard players enable @s fe23_hamburger

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Renaud Bergiste","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bonjour, j'ai une question à te poser !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Renaud Bergiste","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Comment s'appelle la botaniste de la ville ?"}]

tellraw @s ["",{"text":" [Choix 1] ","bold":true,"color":"#CB1C8D"},{"text":"Céleste Ulipe","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 4"}}]
tellraw @s ["",{"text":" [Choix 2] ","bold":true,"color":"#CB1C8D"},{"text":"Alma Rguerite","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 3"}}]
tellraw @s ["",{"text":" [Choix 3] ","bold":true,"color":"#CB1C8D"},{"text":"Aliénor Chidée","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 3"}}]

tellraw @s ["",{"text":" Clique sur le choix souhaité, puis reparle à Renaud\n","italic":true}]