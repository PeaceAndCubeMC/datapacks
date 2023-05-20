execute if score acces_grotte_glace hallo_palier_valeur > Total hallo_jauge_violet run tellraw @s [{"text":"Garde","bold":true,"color":"gray"},{"text":":","color":"gray","bold":false},{"text":" Tu n'as pas accès à cette partie de la grotte. Le nombre de minerais violets total à recolter avant d'accéder à cette partie de la grotte est de ","color":"#699FA2","bold":false},{"score":{"name":"acces_grotte_glace","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":".","color":"#699FA2","bold":false}]

execute as @s if score acces_grotte_glace hallo_palier_valeur <= Total hallo_jauge_violet unless score @s hallo_gift_violet matches 3.. run tellraw @s [{"text":"Garde glace","bold":true,"color":"gray"},{"text":":","color":"gray","bold":false},{"text":" Tu n'as pas accès à cette partie de la grotte. Présente moi un certificat de Mineur expérimenté pour pouvoir passer. Il t'est délivré par un ","color":"#699FA2","bold":false},{"text":"Techno-chercheur","bold":true,"color":"dark_purple"},{"text":" lorsque tu as déposé un total de ","color":"#699FA2","bold":false},{"score":{"name":"violet_3","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":"  minerais violets ","color":"#699FA2","bold":false},{"text":"\u25bc","color":"dark_purple"},{"text":".","color":"#699FA2","bold":false}]

execute if score acces_grotte_glace hallo_palier_valeur <= Total hallo_jauge_violet if score @s hallo_gift_violet matches 3.. run tp @s ~ ~ ~-5
execute if score acces_grotte_glace hallo_palier_valeur <= Total hallo_jauge_violet if score @s hallo_gift_violet matches 3.. run tellraw @s [{"text":"Garde glace","bold":true,"color":"gray"},{"text":":","color":"gray","bold":false},{"text":" T'es classe.","color":"#699FA2","bold":false}]
execute if score acces_grotte_glace hallo_palier_valeur <= Total hallo_jauge_violet if score @s hallo_gift_violet matches 3.. run tellraw @s [{"text":"Garde glace","bold":true,"color":"gray"},{"text":":","color":"gray","bold":false},{"text":" Tu passes.","color":"#699FA2","bold":false}]