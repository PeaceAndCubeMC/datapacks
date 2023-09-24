scoreboard players enable @s fe23_frites

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Barnabé Lege","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Les frites sont belges ! Y a pas de débat."}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Émile de France","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Belges ? Seule la gastronomie française peut en être à l'origine ! Elles sont françaises."}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Barnabé Lege","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Non, BEL-GES !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Émile de France","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" FRAN-ÇAI-SES !"}]

tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Qu'est-ce que je peux dire pour les calmer...","italic":true}]

tellraw @s ["",{"text":"\n [Choix 1] ","bold":true,"color":"#CB1C8D"},{"text":"Les frites ont en fait une histoire complexe, elles sont apparues dans différentes régions et sont appréciées partout dans le monde !","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_frites set 1"}}]
tellraw @s ["",{"text":"\n [Choix 2] ","bold":true,"color":"#CB1C8D"},{"text":"Les frites sont traduites en « french fries » à l'international, c'est donc logique de les considérer comme françaises !","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_frites set 2"}}]
tellraw @s ["",{"text":"\n [Choix 3] ","bold":true,"color":"#CB1C8D"},{"text":"Les frites sont tellement meilleures en Belgique, c'est évident qu'elles sont belges, peu importe leur origine supposée !","color":"#F56EB3","clickEvent":{"action":"run_command","value":"/trigger fe23_frites set 3"}}]
tellraw @s ["",{"text":"\n Clique sur le choix souhaité","italic":true}]

execute at @s run tp @s ~-2 ~ ~