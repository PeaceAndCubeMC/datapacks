scoreboard players enable @s fe23_hamburger

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Donald Heumaingauche","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bonjour, ma question est la suivante."}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Donald Heumaingauche","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Comment s'appelait le poisson recherché par Terry Yaki ?"}]

tellraw @s ["",{"text":" [Choix 1] ","bold":true,"color":"#CB1C8D"},{"text":"Jérémie","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 14"}}]
tellraw @s ["",{"text":" [Choix 2] ","bold":true,"color":"#CB1C8D"},{"text":"Victor","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 13"}}]
tellraw @s ["",{"text":" [Choix 3] ","bold":true,"color":"#CB1C8D"},{"text":"Kévin","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 13"}}]

tellraw @s ["",{"text":" Clique sur le choix souhaité, puis reparle à Donald\n","italic":true}]