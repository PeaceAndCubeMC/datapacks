scoreboard players enable @s fe23_frites

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Les frites belges sont croustillantes à l'extérieur, tendres à l'intérieur, tandis que les frites françaises ont une finesse incomparable, les deux ont leur propre charme unique !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Barnabé Lege","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" C'est vrai qu'elles ont leur différence de texture..."}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Émile de France","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Certes, mais toi, tu les manges comment tes frites ?"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Barnabé Lege","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" À la main, dès que j'ai faim !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Émile de France","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Ah non ! C'est de la maltraitance ça !"}]

tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Qu'est-ce que je peux dire pour les calmer...","italic":true}]

tellraw @s ["",{"text":"\n [Choix 1] ","bold":true,"color":"#CB1C8D"},{"text":"Les frites sont polyvalentes ! Elles s'adaptent à tous les plats, peu importe d'où elles viennent. Accompagnées ou toutes seules, c'est un régal !","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_frites set 9"}}]
tellraw @s ["",{"text":"\n [Choix 2] ","bold":true,"color":"#CB1C8D"},{"text":"Les frites doivent être l'accompagnement d'un bon plat. Elles se mangent avec une bonne viande au déjeuner ou au dîner.","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_frites set 7"}}]
tellraw @s ["",{"text":"\n [Choix 3] ","bold":true,"color":"#CB1C8D"},{"text":"Il n'y a pas d'heure pour manger un bon cornet de frites, c'est encore mieux avec les doigts !","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_frites set 8"}}]
tellraw @s ["",{"text":"\n Clique sur le choix souhaité","italic":true}]

execute at @s run tp @s ~-2 ~ ~