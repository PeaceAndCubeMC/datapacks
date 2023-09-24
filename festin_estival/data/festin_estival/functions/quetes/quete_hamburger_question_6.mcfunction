scoreboard players enable @s fe23_hamburger

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Ivor Jeuron","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bonjour, voici ma question."}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Ivor Jeuron","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Quel animal tire la charrette de Donald Heumaingauche ?"}]

tellraw @s ["",{"text":" [Choix 1] ","bold":true,"color":"#CB1C8D"},{"text":"Un lama","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 11"}}]
tellraw @s ["",{"text":" [Choix 2] ","bold":true,"color":"#CB1C8D"},{"text":"Un cheval","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 11"}}]
tellraw @s ["",{"text":" [Choix 3] ","bold":true,"color":"#CB1C8D"},{"text":"Un dromadaire","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 12"}}]

tellraw @s ["",{"text":" Clique sur le choix souhaité, puis reparle à Ivor\n","italic":true}]