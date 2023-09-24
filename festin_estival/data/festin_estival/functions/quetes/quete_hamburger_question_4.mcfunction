scoreboard players enable @s fe23_hamburger

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Alexandra Fraîchissant","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Salut, réponds à cette question !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Alexandra Fraîchissant","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Dans quel lieu se trouve Jennifer Mière ?"}]

tellraw @s ["",{"text":" [Choix 1] ","bold":true,"color":"#CB1C8D"},{"text":"Dans le moulin","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 8"}}]
tellraw @s ["",{"text":" [Choix 2] ","bold":true,"color":"#CB1C8D"},{"text":"Dans la fromagerie","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 7"}}]
tellraw @s ["",{"text":" [Choix 3] ","bold":true,"color":"#CB1C8D"},{"text":"Dans l'entrepôt agricole","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 7"}}]

tellraw @s ["",{"text":" Clique sur le choix souhaité, puis reparle à Alexandra\n","italic":true}]