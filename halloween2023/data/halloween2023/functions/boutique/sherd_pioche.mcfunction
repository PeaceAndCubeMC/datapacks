advancement revoke @s only halloween2023:boutique/sherd_pioche

execute unless score @s h23_monnaie matches 10.. run tellraw @s [{"text":"Simba Biole","bold":true,"color":"#024050"},{"text":" : Tu n'as pas assez de pièces temporelles !","color":"#C5CDB5","bold":false}]
execute unless score @s h23_monnaie matches 10.. run return -1

execute if score @s h23_monnaie matches 10.. run give @s miner_pottery_sherd{display:{Name:'{"text":"Gravure de pioche","color":"#B87333","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une gravure utilisée pour","color":"#FAFAFA","italic":false}','{"text":"décorer des pots.","color":"#FAFAFA","italic":false}','{"text":" "}','{"text":"Halloween 2023","color":"#024050","bold":true,"italic":false}']}} 4
execute if score @s h23_monnaie matches 10.. at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~
execute if score @s h23_monnaie matches 10.. run tellraw @s [{"text":"Simba Biole","bold":true,"color":"#024050"},{"text":" : Merci d'avoir acheté une ","color":"#C5CDB5","bold":false},{"text":"Gravure de pioche","color":"#C5CDB5"},{"text":" contre 10 pièces temporelles !","color":"#C5CDB5","bold":false}]
execute if score @s h23_monnaie matches 10.. run scoreboard players remove @s h23_monnaie 10