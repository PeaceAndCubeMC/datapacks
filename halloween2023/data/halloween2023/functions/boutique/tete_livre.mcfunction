advancement revoke @s only halloween2023:boutique/tete_livre

execute unless score @s h23_monnaie matches 25.. run tellraw @s [{"text":"Simba Biole","bold":true,"color":"#024050"},{"text":" : Tu n'as pas assez de pièces temporelles !","color":"#C5CDB5","bold":false}]
execute unless score @s h23_monnaie matches 25.. run return -1

execute if score @s h23_monnaie matches 25.. run give @s player_head{display:{Name:'{"text":"Recettes citrouillesques","color":"#B87333","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Des bouquins contenant des","color":"#FAFAFA","italic":false}','{"text":"recettes effrayantes.","color":"#FAFAFA","italic":false}','{"text":" "}','{"text":"Halloween 2023","color":"#024050","bold":true,"italic":false}']},SkullOwner:{Id:[I;1799526328,-1122745884,-1673016857,407707739],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmE0MDc3MDY3NjZhYzc4YWRiODUzNjIxOGM5MDhkMWE0ZjYzODAwM2Q0YjI2M2JhZWY1NTdmYmIwNTAxZTdlYiJ9fX0="}]}}} 1
execute if score @s h23_monnaie matches 25.. at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~
execute if score @s h23_monnaie matches 25.. run tellraw @s [{"text":"Simba Biole","bold":true,"color":"#024050"},{"text":" : Merci d'avoir acheté des ","color":"#C5CDB5","bold":false},{"text":"Recettes citrouillesques","color":"#C5CDB5"},{"text":" contre 25 pièces temporelles !","color":"#C5CDB5","bold":false}]
execute if score @s h23_monnaie matches 25.. run scoreboard players remove @s h23_monnaie 25