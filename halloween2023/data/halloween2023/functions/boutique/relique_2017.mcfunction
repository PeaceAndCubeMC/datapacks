execute unless score @s h23_monnaie matches 50.. run tellraw @s [{"text":"Solène Tiquité","bold":true,"color":"#024050"},{"text":" : Tu n'as pas assez de pièces temporelles !","color":"#C5CDB5","bold":false}]
execute unless score @s h23_monnaie matches 50.. run advancement revoke @s only halloween2023:boutique/relique_2017
execute unless score @s h23_monnaie matches 50.. run return -1

execute if score @s h23_monnaie matches 50.. run give @s diamond_boots{display:{Name:'{"text":"Relique vicieuse","color":"#61C3CB","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une paire de bottes fabriquée","color":"#FAFAFA","italic":false}','{"text":"dans les enfers d\'Halloween.","color":"#FAFAFA","italic":false}','{"text":" "}','[{"text":"Origine : ","color":"#C5CDB5","italic":false},{"text":"Halloween 2017","color":"#C5CDB5","bold":true,"italic":false}]','{"text":"Halloween 2023","color":"#024050","bold":true,"italic":false}']},HideFlags:128,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:fire_protection",lvl:1s},{id:"minecraft:feather_falling",lvl:1s},{id:"minecraft:blast_protection",lvl:1s},{id:"minecraft:projectile_protection",lvl:2s},{id:"minecraft:thorns",lvl:4s},{id:"minecraft:depth_strider",lvl:1s},{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:unbreaking",lvl:5s}],Trim:{material:"minecraft:quartz",pattern:"minecraft:eye"}} 1
execute if score @s h23_monnaie matches 50.. at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~
execute if score @s h23_monnaie matches 50.. run tellraw @s [{"text":"Solène Tiquité","bold":true,"color":"#024050"},{"text":" : Merci d'avoir acheté la ","color":"#C5CDB5","bold":false},{"text":"Relique vicieuse","color":"#C5CDB5"},{"text":" contre 50 pièces temporelles !","color":"#C5CDB5","bold":false}]
execute if score @s h23_monnaie matches 50.. run scoreboard players remove @s h23_monnaie 50