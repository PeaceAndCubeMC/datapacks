execute unless score @s h23_avancee matches 0.. run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Cet homme a l'air d'être un chasseur aguerri, je repasserai le voir plus tard.","color":"#C5CDB5","bold":false}]
execute unless score @s h23_avancee matches 0.. run return -1

execute unless score @s h23_quete matches 0.. run scoreboard players set @s h23_quete 0
execute if score @s h23_quete matches 0 if data storage minecraft:h23 {quete:1} run tellraw @s [{"text":"Chasseur de monstres","bold":true,"color":"#024050"},{"text":" : Bien le bonjour, chasseur en herbe ! Aujourd'hui, tu peux m'aider à tuer des créatures de l'année 2014. Tue-en 15 et reviens me voir !","color":"#C5CDB5","bold":false}]
execute if score @s h23_quete matches 0 if data storage minecraft:h23 {quete:2} run tellraw @s [{"text":"Chasseur de monstres","bold":true,"color":"#024050"},{"text":" : Bien le bonjour, chasseur en herbe ! Aujourd'hui, tu peux m'aider à tuer des créatures de l'année 2015. Tue-en 15 et reviens me voir !","color":"#C5CDB5","bold":false}]
execute if score @s h23_quete matches 0 if data storage minecraft:h23 {quete:3} run tellraw @s [{"text":"Chasseur de monstres","bold":true,"color":"#024050"},{"text":" : Bien le bonjour, chasseur en herbe ! Aujourd'hui, tu peux m'aider à tuer des créatures de l'année 2016. Tue-en 15 et reviens me voir !","color":"#C5CDB5","bold":false}]
execute if score @s h23_quete matches 0 if data storage minecraft:h23 {quete:4} run tellraw @s [{"text":"Chasseur de monstres","bold":true,"color":"#024050"},{"text":" : Bien le bonjour, chasseur en herbe ! Aujourd'hui, tu peux m'aider à tuer des créatures de l'année 2017. Tue-en 15 et reviens me voir !","color":"#C5CDB5","bold":false}]
execute if score @s h23_quete matches 0 if data storage minecraft:h23 {quete:5} run tellraw @s [{"text":"Chasseur de monstres","bold":true,"color":"#024050"},{"text":" : Bien le bonjour, chasseur en herbe ! Aujourd'hui, tu peux m'aider à tuer des créatures de l'année 2018. Tue-en 15 et reviens me voir !","color":"#C5CDB5","bold":false}]
execute if score @s h23_quete matches 0 if data storage minecraft:h23 {quete:6} run tellraw @s [{"text":"Chasseur de monstres","bold":true,"color":"#024050"},{"text":" : Bien le bonjour, chasseur en herbe ! Aujourd'hui, tu peux m'aider à tuer des créatures de l'année 2019. Tue-en 15 et reviens me voir !","color":"#C5CDB5","bold":false}]
execute if score @s h23_quete matches 0 if data storage minecraft:h23 {quete:7} run tellraw @s [{"text":"Chasseur de monstres","bold":true,"color":"#024050"},{"text":" : Bien le bonjour, chasseur en herbe ! Aujourd'hui, tu peux m'aider à tuer des créatures de l'année 2020. Tue-en 15 et reviens me voir !","color":"#C5CDB5","bold":false}]
execute if score @s h23_quete matches 0 if data storage minecraft:h23 {quete:8} run tellraw @s [{"text":"Chasseur de monstres","bold":true,"color":"#024050"},{"text":" : Bien le bonjour, chasseur en herbe ! Aujourd'hui, tu peux m'aider à tuer des créatures de l'année 2021. Tue-en 15 et reviens me voir !","color":"#C5CDB5","bold":false}]
execute if score @s h23_quete matches 0 if data storage minecraft:h23 {quete:9} run tellraw @s [{"text":"Chasseur de monstres","bold":true,"color":"#024050"},{"text":" : Bien le bonjour, chasseur en herbe ! Aujourd'hui, tu peux m'aider à tuer des créatures de l'année 2022. Tue-en 15 et reviens me voir !","color":"#C5CDB5","bold":false}]

execute if score @s h23_quete matches 2 run tellraw @s [{"text":"Chasseur de monstres","bold":true,"color":"#024050"},{"text":" : Merci de m'avoir aidé aujourd'hui, reviens demain !","color":"#C5CDB5","bold":false}]

execute if score @s h23_quete matches 1 run tellraw @s [{"text":"Chasseur de monstres","bold":true,"color":"#024050"},{"text":" : Merci pour ton aide, ce sera toujours ça en moins dans le gouffre ! Voici quelques pièces pour te récompenser.","color":"#C5CDB5","bold":false}]
execute if score @s h23_quete matches 1 run scoreboard players add @s h23_monnaie 25
execute if score @s h23_quete matches 1 run scoreboard players set @s h23_quete 2