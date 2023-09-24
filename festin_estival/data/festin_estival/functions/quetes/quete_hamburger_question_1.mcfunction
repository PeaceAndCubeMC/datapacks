scoreboard players enable @s fe23_hamburger

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Giuseppe Perroni","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Salut, je souhaitais en effet te parler ! Réponds à cette question."}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Giuseppe Perroni","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Laquelle de ces personnes n'a pas de stand au marché de la ville ?"}]

tellraw @s ["",{"text":" [Choix 1] ","bold":true,"color":"#CB1C8D"},{"text":"Sophia Regile","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 1"}}]
tellraw @s ["",{"text":" [Choix 2] ","bold":true,"color":"#CB1C8D"},{"text":"Bradley Tier","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 2"}}]
tellraw @s ["",{"text":" [Choix 3] ","bold":true,"color":"#CB1C8D"},{"text":"Manu Tella","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 1"}}]

tellraw @s ["",{"text":" Clique sur le choix souhaité, puis reparle à Giuseppe\n","italic":true}]