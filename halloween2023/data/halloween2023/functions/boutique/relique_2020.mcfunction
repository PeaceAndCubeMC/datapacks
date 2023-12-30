execute unless score @s h23_monnaie matches 70.. run tellraw @s [{"text":"Simba Biole","bold":true,"color":"#024050"},{"text":" : Tu n'as pas assez de pièces temporelles !","color":"#C5CDB5","bold":false}]
execute unless score @s h23_monnaie matches 70.. run advancement revoke @s only halloween2023:boutique/relique_2020
execute unless score @s h23_monnaie matches 70.. run return -1

execute if score @s h23_monnaie matches 70.. run give @s crossbow{display:{Name:'{"text":"Relique du Roi d\'Almenaz","color":"#61C3CB","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"L\'arme de prédilection de","color":"#FAFAFA","italic":false}','{"text":"l\'ancien Roi d\'Almenaz.","color":"#FAFAFA","italic":false}','{"text":" "}','[{"text":"Origine : ","color":"#C5CDB5","italic":false},{"text":"14 juillet 2020","color":"#C5CDB5","bold":true,"italic":false}]','{"text":"Halloween 2023","color":"#024050","bold":true,"italic":false}']},Enchantments:[{id:"minecraft:looting",lvl:2s},{id:"minecraft:unbreaking",lvl:4s},{id:"minecraft:mending",lvl:1s},{id:"minecraft:multishot",lvl:2s},{id:"minecraft:piercing",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0.1,Operation:1,UUID:[I;-179863175,540101512,-1584338545,1911266716],Slot:"mainhand"}]} 1
execute if score @s h23_monnaie matches 70.. at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~
execute if score @s h23_monnaie matches 70.. run tellraw @s [{"text":"Simba Biole","bold":true,"color":"#024050"},{"text":" : Merci d'avoir acheté la ","color":"#C5CDB5","bold":false},{"text":"Relique du Roi d'Almenaz","color":"#C5CDB5"},{"text":" contre 70 pièces temporelles !","color":"#C5CDB5","bold":false}]
execute if score @s h23_monnaie matches 70.. run scoreboard players remove @s h23_monnaie 70