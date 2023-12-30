advancement revoke @s only halloween2023:boutique/zombard

execute unless score @s h23_monnaie matches 10.. run tellraw @s [{"text":"Simba Biole","bold":true,"color":"#024050"},{"text":" : Tu n'as pas assez de pièces temporelles !","color":"#C5CDB5","bold":false}]
execute unless score @s h23_monnaie matches 10.. run return -1

execute if score @s h23_monnaie matches 10.. run give @s armor_stand{display:{Name:'{"text":"Zombard Morstand","color":"#B87333","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Un porte-armure ayant","color":"#FAFAFA","italic":false}','{"text":"les deux bras tendus.","color":"#FAFAFA","italic":false}','{"text":" "}','{"text":"Halloween 2023","color":"#024050","bold":true,"italic":false}']},EntityTag:{ShowArms:1b,NoBasePlate:1b,Pose:{LeftArm:[270f,0f,0f],RightArm:[270f,0f,0f]}}} 1
execute if score @s h23_monnaie matches 10.. at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~
execute if score @s h23_monnaie matches 10.. run tellraw @s [{"text":"Simba Biole","bold":true,"color":"#024050"},{"text":" : Merci d'avoir acheté un ","color":"#C5CDB5","bold":false},{"text":"Zombard Morstand","color":"#C5CDB5"},{"text":" contre 10 pièces temporelles !","color":"#C5CDB5","bold":false}]
execute if score @s h23_monnaie matches 10.. run scoreboard players remove @s h23_monnaie 10