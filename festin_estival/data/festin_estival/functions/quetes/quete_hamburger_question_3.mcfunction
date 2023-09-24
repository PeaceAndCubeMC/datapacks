scoreboard players enable @s fe23_hamburger

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Rémi Stérieux","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bonjour, j'ai moi aussi une question pour toi."}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Rémi Stérieux","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Lequel de ces champs n'est pas présent dans la ville ?"}]

tellraw @s ["",{"text":" [Choix 1] ","bold":true,"color":"#CB1C8D"},{"text":"Champ de vanille","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 5"}}]
tellraw @s ["",{"text":" [Choix 2] ","bold":true,"color":"#CB1C8D"},{"text":"Champ de betterave","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 6"}}]
tellraw @s ["",{"text":" [Choix 3] ","bold":true,"color":"#CB1C8D"},{"text":"Champ de maïs","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 5"}}]

tellraw @s ["",{"text":" Clique sur le choix souhaité, puis reparle à Rémi\n","italic":true}]