scoreboard players enable @s fe23_hamburger

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Latifa Rine","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bonjour ! Voilà ma question."}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Latifa Rine","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Lesquelles de ces personnes sont cousins ?"}]

tellraw @s ["",{"text":" [Choix 1] ","bold":true,"color":"#CB1C8D"},{"text":"Corentin Quiétude et Sylvain Quiétude","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 17"}}]
tellraw @s ["",{"text":" [Choix 2] ","bold":true,"color":"#CB1C8D"},{"text":"Mathy Hergrass et Lucas Membert","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 18"}}]
tellraw @s ["",{"text":" [Choix 3] ","bold":true,"color":"#CB1C8D"},{"text":"Barnabé Lege et Émile de France","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 17"}}]

tellraw @s ["",{"text":" Clique sur le choix souhaité, puis reparle à Latifa\n","italic":true}]