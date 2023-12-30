advancement revoke @s only halloween2023:boutique/tete_citrouille

execute unless score @s h23_monnaie matches 25.. run tellraw @s [{"text":"Simba Biole","bold":true,"color":"#024050"},{"text":" : Tu n'as pas assez de pièces temporelles !","color":"#C5CDB5","bold":false}]
execute unless score @s h23_monnaie matches 25.. run return -1

execute if score @s h23_monnaie matches 25.. run give @s player_head{display:{Name:'{"text":"Ci pas trouille","color":"#B87333","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une petite citrouille toute","color":"#FAFAFA","italic":false}','{"text":"mignonne.","color":"#FAFAFA","italic":false}','{"text":" "}','{"text":"Halloween 2023","color":"#024050","bold":true,"italic":false}']},SkullOwner:{Id:[I;-38537216,-1708568772,-1859655955,-2113632815],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2Q1ODU1NTk0MGUxZTk4MjNhMmMyYWI1YzQ3NGY5ZmNlYWI2OTYyOWQ5YTBiYjMyNTMyYjk5YjIxNTc4NTZkZCJ9fX0="}]}}} 1
execute if score @s h23_monnaie matches 25.. at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~
execute if score @s h23_monnaie matches 25.. run tellraw @s [{"text":"Simba Biole","bold":true,"color":"#024050"},{"text":" : Merci d'avoir acheté une ","color":"#C5CDB5","bold":false},{"text":"Ci pas trouille","color":"#C5CDB5"},{"text":" contre 25 pièces temporelles !","color":"#C5CDB5","bold":false}]
execute if score @s h23_monnaie matches 25.. run scoreboard players remove @s h23_monnaie 25