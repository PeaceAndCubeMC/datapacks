scoreboard players enable @s fe23_hamburger

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Sacha Lutier","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Salut mon loupiot ! J'ai une dernière question à te poser."}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Sacha Lutier","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Combien y a-t-il de stations de craft différentes ?"}]

tellraw @s ["",{"text":" [Choix 1] ","bold":true,"color":"#CB1C8D"},{"text":"14","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 20"}}]
tellraw @s ["",{"text":" [Choix 2] ","bold":true,"color":"#CB1C8D"},{"text":"11","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 19"}}]
tellraw @s ["",{"text":" [Choix 3] ","bold":true,"color":"#CB1C8D"},{"text":"12","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 19"}}]

tellraw @s ["",{"text":" Clique sur le choix souhaité, puis reparle à Sacha\n","italic":true}]