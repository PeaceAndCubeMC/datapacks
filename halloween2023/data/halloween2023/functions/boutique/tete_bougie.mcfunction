advancement revoke @s only halloween2023:boutique/tete_bougie

execute unless score @s h23_monnaie matches 25.. run tellraw @s [{"text":"Simba Biole","bold":true,"color":"#024050"},{"text":" : Tu n'as pas assez de pièces temporelles !","color":"#C5CDB5","bold":false}]
execute unless score @s h23_monnaie matches 25.. run return -1

execute if score @s h23_monnaie matches 25.. run give @s player_head{display:{Name:'{"text":"Crâne bougie","color":"#B87333","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une bougie en forme de","color":"#FAFAFA","italic":false}','{"text":"crâne de squelette.","color":"#FAFAFA","italic":false}','{"text":" "}','{"text":"Halloween 2023","color":"#024050","bold":true,"italic":false}']},SkullOwner:{Id:[I;674692323,460475624,-1981364369,-1717546587],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzJiMjgxM2YzZGM5MzNhMGY3ZTNhYjg4NDgyYWRkZWM5ODk4ZWI1MmE4OTM1ODY2ZDUyYzU2OTRjNTZmZmFmOSJ9fX0="}]}}} 1
execute if score @s h23_monnaie matches 25.. at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~
execute if score @s h23_monnaie matches 25.. run tellraw @s [{"text":"Simba Biole","bold":true,"color":"#024050"},{"text":" : Merci d'avoir acheté un ","color":"#C5CDB5","bold":false},{"text":"Crâne bougie","color":"#C5CDB5"},{"text":" contre 25 pièces temporelles !","color":"#C5CDB5","bold":false}]
execute if score @s h23_monnaie matches 25.. run scoreboard players remove @s h23_monnaie 25