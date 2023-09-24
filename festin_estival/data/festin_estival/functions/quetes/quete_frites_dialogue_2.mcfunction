scoreboard players enable @s fe23_frites

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Les frites ont en fait une histoire complexe, elles sont apparues dans différentes régions et sont appréciées partout dans le monde !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Émile de France","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" C'est vrai, même chez nous l'origine est assez vague au final. Par contre, rien à redire sur la texture !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Barnabé Lege","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Comment ça ? Vos frites sont minuscules, sans saveur ! Elles n'ont aucun caractère !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Émile de France","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Et elles sont pleines de graisse aussi ?"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Barnabé Lege","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Comment ça « pleines de graisse » ?"}]

tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Qu'est-ce que je peux dire pour les calmer...","italic":true}]

tellraw @s ["",{"text":"\n [Choix 1] ","bold":true,"color":"#CB1C8D"},{"text":"C'est vrai que je trouve que les frites belges sont parfois molles et grasses, mais elles restent mangeables.","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_frites set 4"}}]
tellraw @s ["",{"text":"\n [Choix 2] ","bold":true,"color":"#CB1C8D"},{"text":"Les frites françaises sont trop fines, elles grillent trop vite. Certains aiment bien, mais je préfère quand il y a un côté moelleux.","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_frites set 5"}}]
tellraw @s ["",{"text":"\n [Choix 3] ","bold":true,"color":"#CB1C8D"},{"text":"Les frites belges sont croustillantes à l'extérieur, tendres à l'intérieur, tandis que les frites françaises ont une finesse incomparable, les deux ont leur propre charme unique !","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_frites set 6"}}]
tellraw @s ["",{"text":"\n Clique sur le choix souhaité","italic":true}]

execute at @s run tp @s ~-2 ~ ~