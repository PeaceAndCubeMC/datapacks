scoreboard players enable @s fe23_hamburger

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Jennifer Mière","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Salut ! J'ai une question à te soumettre."}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Jennifer Mière","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Combien d'outils différents sont proposés par le forgeron ?"}]

tellraw @s ["",{"text":" [Choix 1] ","bold":true,"color":"#CB1C8D"},{"text":"4","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 9"}}]
tellraw @s ["",{"text":" [Choix 2] ","bold":true,"color":"#CB1C8D"},{"text":"6","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 9"}}]
tellraw @s ["",{"text":" [Choix 3] ","bold":true,"color":"#CB1C8D"},{"text":"5","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 10"}}]

tellraw @s ["",{"text":" Clique sur le choix souhaité, puis reparle à Jennifer\n","italic":true}]