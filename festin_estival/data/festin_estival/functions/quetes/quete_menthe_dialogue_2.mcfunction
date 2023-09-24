scoreboard players enable @s fe23_menthe

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Augustin Firmier","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" En effet, la menthe n'a pas de vertus anti-inflammatoires ! Passons à la question suivante."}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Augustin Firmier","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Dans quel pays la menthe n'est pas produite en grande quantité ?"}]

tellraw @s ["",{"text":"\n [Choix 1] ","bold":true,"color":"#CB1C8D"},{"text":"Japon","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_menthe set 5"}}]
tellraw @s ["",{"text":"\n [Choix 2] ","bold":true,"color":"#CB1C8D"},{"text":"Mexique","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_menthe set 6"}}]
tellraw @s ["",{"text":"\n [Choix 3] ","bold":true,"color":"#CB1C8D"},{"text":"Maroc","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_menthe set 7"}}]
tellraw @s ["",{"text":"\n [Choix 4] ","bold":true,"color":"#CB1C8D"},{"text":"Vietnam","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_menthe set 8"}}]

tellraw @s ["",{"text":"\n Clique sur le choix souhaité, puis reparle à l'infirmier","italic":true}]

execute at @s run tp @s ~2 ~ ~