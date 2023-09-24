scoreboard players enable @s fe23_menthe

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Augustin Firmier","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bonjour ! Nous avons découvert une nouvelle plante, appelée la menthe. Si tu réponds correctement à mes questions, je te donnerai de quoi en récolter. Bonne chance !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Augustin Firmier","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Quelles vertus n'a pas la menthe ?"}]

tellraw @s ["",{"text":"\n [Choix 1] ","bold":true,"color":"#CB1C8D"},{"text":"Des vertus digestives","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_menthe set 1"}}]
tellraw @s ["",{"text":"\n [Choix 2] ","bold":true,"color":"#CB1C8D"},{"text":"Des vertus anti-inflammatoires","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_menthe set 2"}}]
tellraw @s ["",{"text":"\n [Choix 3] ","bold":true,"color":"#CB1C8D"},{"text":"Des vertus antiseptiques","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_menthe set 3"}}]
tellraw @s ["",{"text":"\n [Choix 4] ","bold":true,"color":"#CB1C8D"},{"text":"Des vertus toniques","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_menthe set 4"}}]

tellraw @s ["",{"text":"\n Clique sur le choix souhaité, puis reparle à l'infirmier","italic":true}]

execute at @s run tp @s ~2 ~ ~