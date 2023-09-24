execute if entity @s[advancements={festin_estival:craft/root=true}] run return 0

tp @s -1697.5 83.0 -418.5 90 0

execute unless score @s fe23_regles matches 0.. run scoreboard players set @s fe23_regles 0
scoreboard players enable @s fe23_regles

tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"text":"Festin Estival","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Règles de l'événement, à accepter avant d'entrer dans l'événement :\n - Ne pas usebug ou chercher à contourner les règles de l'événement\n - Ne pas chercher délibérement à contourner le déroulement des quêtes\n - Ne pas chercher à bloquer la progression des autres joueurs\n - Éviter de dévoiler un maximum le contenu de l'événement (les quêtes et leurs solutions) dans le tchat public\n - Être fairplay\n Accepter les règles : "},{"text":"[Oui]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger fe23_regles set 1"}},{"text":" "},{"text":"[Non]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger fe23_regles set 2"}},{"text":"\n"}]