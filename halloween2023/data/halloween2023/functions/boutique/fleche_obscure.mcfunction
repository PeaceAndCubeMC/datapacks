advancement revoke @s only halloween2023:boutique/fleche_obscure

execute unless score @s h23_monnaie matches 5.. run tellraw @s [{"text":"Simba Biole","bold":true,"color":"#024050"},{"text":" : Tu n'as pas assez de pièces temporelles !","color":"#C5CDB5","bold":false}]
execute unless score @s h23_monnaie matches 5.. run return -1

execute if score @s h23_monnaie matches 5.. run give @s tipped_arrow{display:{Name:'{"text":"Flèche obscure","color":"#B87333","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une flèche qui met de l\'ombre","color":"#FAFAFA","italic":false}','{"text":"là où il y a de la lumière.","color":"#FAFAFA","italic":false}','{"text":" "}','{"text":"Halloween 2023","color":"#024050","bold":true,"italic":false}']},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],custom_potion_effects:[{id:"minecraft:darkness",amplifier:0b,duration:400}],CustomPotionColor:2236191} 16
execute if score @s h23_monnaie matches 5.. at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~
execute if score @s h23_monnaie matches 5.. run tellraw @s [{"text":"Simba Biole","bold":true,"color":"#024050"},{"text":" : Merci d'avoir acheté des ","color":"#C5CDB5","bold":false},{"text":"Flèches obscures","color":"#C5CDB5"},{"text":" contre 5 pièces temporelles !","color":"#C5CDB5","bold":false}]
execute if score @s h23_monnaie matches 5.. run scoreboard players remove @s h23_monnaie 5