scoreboard players enable @s fe23_menthe

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Augustin Firmier","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" La production de menthe au Vietnam est en effet insignifiante. Voici la dernière question !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Augustin Firmier","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Quelle espèce de menthe n'existe pas ?"}]

tellraw @s ["",{"text":"\n [Choix 1] ","bold":true,"color":"#CB1C8D"},{"text":"Menthe noisette","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_menthe set 9"}}]
tellraw @s ["",{"text":"\n [Choix 2] ","bold":true,"color":"#CB1C8D"},{"text":"Menthe citron","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_menthe set 10"}}]
tellraw @s ["",{"text":"\n [Choix 3] ","bold":true,"color":"#CB1C8D"},{"text":"Menthe poivrée","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_menthe set 11"}}]
tellraw @s ["",{"text":"\n [Choix 4] ","bold":true,"color":"#CB1C8D"},{"text":"Menthe chocolat","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_menthe set 12"}}]

tellraw @s ["",{"text":"\n Clique sur le choix souhaité, puis reparle à l'infirmier","italic":true}]

execute at @s run tp @s ~2 ~ ~