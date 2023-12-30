advancement revoke @s only halloween2023:boutique/tete_pierre

execute unless score @s h23_monnaie matches 25.. run tellraw @s [{"text":"Simba Biole","bold":true,"color":"#024050"},{"text":" : Tu n'as pas assez de pièces temporelles !","color":"#C5CDB5","bold":false}]
execute unless score @s h23_monnaie matches 25.. run return -1

execute if score @s h23_monnaie matches 25.. run give @s player_head{display:{Name:'{"text":"Pierre tombale","color":"#B87333","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une pierre sous laquelle repose","color":"#FAFAFA","italic":false}','{"text":"probablement un fantôme.","color":"#FAFAFA","italic":false}','{"text":" "}','{"text":"Halloween 2023","color":"#024050","bold":true,"italic":false}']},SkullOwner:{Id:[I;902812464,-1440661388,-1297975476,1873428817],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjdjYWI1NmM4MmNiODFiZGI5OTc5YTQ2NGJjOWQzYmEzZTY3MjJiYTEyMmNmNmM1Mjg3MzAxMGEyYjU5YWVmZSJ9fX0="}]}}} 1
execute if score @s h23_monnaie matches 25.. at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~
execute if score @s h23_monnaie matches 25.. run tellraw @s [{"text":"Simba Biole","bold":true,"color":"#024050"},{"text":" : Merci d'avoir acheté une ","color":"#C5CDB5","bold":false},{"text":"Pierre tombale","color":"#C5CDB5"},{"text":" contre 25 pièces temporelles !","color":"#C5CDB5","bold":false}]
execute if score @s h23_monnaie matches 25.. run scoreboard players remove @s h23_monnaie 25