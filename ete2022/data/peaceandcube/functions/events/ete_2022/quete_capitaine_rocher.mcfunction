execute unless entity @s[scores={ete2022_quete=-1..}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"text":"Sacha Lutier : ","color":"aqua"},{"text":"L'océan m'apaise.","color":"white"}]

execute if entity @s[scores={ete2022_quete=..7}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"text":"Sacha Lutier : ","color":"aqua"},{"text":"L'océan m'apaise.","color":"white"}]

execute if entity @s[scores={ete2022_quete=8}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"text":"Sacha Lutier : ","color":"aqua"},{"text":"Il est là ! Lord O'Nance attaque le village depuis son navire ! On doit vite l'arrêter !","color":"white"}]

execute if entity @s[scores={ete2022_quete=8}] run playsound minecraft:entity.ghast.hurt ambient @s ~ ~ ~ 10 2
execute if entity @s[scores={ete2022_quete=8}] run playsound minecraft:entity.ghast.scream ambient @s ~ ~ ~ 10 1
execute if entity @s[scores={ete2022_quete=8}] run playsound minecraft:entity.creeper.primed ambient @s ~ ~ ~ 10 0.5
execute positioned ~ ~15 ~15 if entity @s[scores={ete2022_quete=8}] run summon fireball ~ ~ ~ {power:[0.0,-0.1,-0.05],Item:{id:"minecraft:netherite_block",Count:1b}}
execute positioned ~5 ~35 ~25 if entity @s[scores={ete2022_quete=8}] run summon fireball ~ ~ ~ {power:[0.0,-0.1,-0.05],Item:{id:"minecraft:netherite_block",Count:1b}}
execute positioned ~-5 ~25 ~ if entity @s[scores={ete2022_quete=8}] run summon fireball ~ ~ ~ {power:[0.0,-0.1,-0.05],Item:{id:"minecraft:netherite_block",Count:1b}}

execute if entity @s[scores={ete2022_quete=8}] run scoreboard players set @s ete2022_quete 9

execute if entity @s[scores={ete2022_quete=9}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"text":"Sacha Lutier : ","color":"aqua"},{"text":"Vite, tous dans mon navire ! On va faire couler ce scélérat !","color":"white"}]

execute if entity @s[scores={ete2022_quete=9}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"]","color":"dark_green"},{"text":" ","color":"blue"},{"text":"Objectif Principal :","italic":true,"underlined":true,"color":"light_purple"},{"text":" Rendez vous dans le navire du Capitaine dans le port.","italic":true,"color":"aqua"}]