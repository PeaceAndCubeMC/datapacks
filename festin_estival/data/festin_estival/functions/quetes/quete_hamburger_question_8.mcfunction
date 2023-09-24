scoreboard players enable @s fe23_hamburger

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Marie Basmati","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Salut, réponds à cette question !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Marie Basmati","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Quelle recette n'est pas proposée dans le festin estival ?"}]

tellraw @s ["",{"text":" [Choix 1] ","bold":true,"color":"#CB1C8D"},{"text":"Tarte aux pommes","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 15"}}]
tellraw @s ["",{"text":" [Choix 2] ","bold":true,"color":"#CB1C8D"},{"text":"Gâteau au chocolat","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 15"}}]
tellraw @s ["",{"text":" [Choix 3] ","bold":true,"color":"#CB1C8D"},{"text":"Charlotte aux fraises","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_hamburger set 16"}}]

tellraw @s ["",{"text":" Clique sur le choix souhaité, puis reparle à Marie\n","italic":true}]