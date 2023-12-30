execute unless score @s h23_avancee matches 0.. run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Cet homme aura sûrement des choses à me dire plus tard...","color":"#C5CDB5","bold":false}]
execute unless score @s h23_avancee matches 0.. run return -1

execute if score @s h23_avancee matches 0 run tellraw @s [{"text":"Francis Trouille","bold":true,"color":"#024050"},{"text":" : Bonjour cher aventurier ! Pour te motiver à aider Bob, je te donnerai ","color":"#C5CDB5","bold":false},{"text":"50 pièces temporelles","color":"gold","bold":false},{"text":" à chaque fois que tu auras passé une année. Reviens me voir régulièrement !","color":"#C5CDB5","bold":false}]

execute if score @s h23_avancee matches 1.. if entity @s[advancements={halloween2023:quete/avancee={1=false}}] run tellraw @s [{"text":"Francis Trouille","bold":true,"color":"#024050"},{"text":" : Tu as passé l'année 2014, bravo ! Voici tes 50 pièces temporelles.","color":"#C5CDB5","bold":false}]
execute if score @s h23_avancee matches 1.. if entity @s[advancements={halloween2023:quete/avancee={1=false}}] run scoreboard players add @s h23_monnaie 50
execute if score @s h23_avancee matches 1.. if entity @s[advancements={halloween2023:quete/avancee={1=false}}] run advancement grant @s only halloween2023:quete/avancee 1

execute if score @s h23_avancee matches 2.. if entity @s[advancements={halloween2023:quete/avancee={2=false}}] run tellraw @s [{"text":"Francis Trouille","bold":true,"color":"#024050"},{"text":" : Tu as passé l'année 2015, bravo ! Voici tes 50 pièces temporelles.","color":"#C5CDB5","bold":false}]
execute if score @s h23_avancee matches 2.. if entity @s[advancements={halloween2023:quete/avancee={2=false}}] run scoreboard players add @s h23_monnaie 50
execute if score @s h23_avancee matches 2.. if entity @s[advancements={halloween2023:quete/avancee={2=false}}] run advancement grant @s only halloween2023:quete/avancee 2

execute if score @s h23_avancee matches 3.. if entity @s[advancements={halloween2023:quete/avancee={3=false}}] run tellraw @s [{"text":"Francis Trouille","bold":true,"color":"#024050"},{"text":" : Tu as passé l'année 2016, bravo ! Voici tes 50 pièces temporelles.","color":"#C5CDB5","bold":false}]
execute if score @s h23_avancee matches 3.. if entity @s[advancements={halloween2023:quete/avancee={3=false}}] run scoreboard players add @s h23_monnaie 50
execute if score @s h23_avancee matches 3.. if entity @s[advancements={halloween2023:quete/avancee={3=false}}] run advancement grant @s only halloween2023:quete/avancee 3

execute if score @s h23_avancee matches 4.. if entity @s[advancements={halloween2023:quete/avancee={4=false}}] run tellraw @s [{"text":"Francis Trouille","bold":true,"color":"#024050"},{"text":" : Tu as passé l'année 2017, bravo ! Voici tes 50 pièces temporelles.","color":"#C5CDB5","bold":false}]
execute if score @s h23_avancee matches 4.. if entity @s[advancements={halloween2023:quete/avancee={4=false}}] run scoreboard players add @s h23_monnaie 50
execute if score @s h23_avancee matches 4.. if entity @s[advancements={halloween2023:quete/avancee={4=false}}] run advancement grant @s only halloween2023:quete/avancee 4

execute if score @s h23_avancee matches 5.. if entity @s[advancements={halloween2023:quete/avancee={5=false}}] run tellraw @s [{"text":"Francis Trouille","bold":true,"color":"#024050"},{"text":" : Tu as passé l'année 2018, bravo ! Voici tes 50 pièces temporelles.","color":"#C5CDB5","bold":false}]
execute if score @s h23_avancee matches 5.. if entity @s[advancements={halloween2023:quete/avancee={5=false}}] run scoreboard players add @s h23_monnaie 50
execute if score @s h23_avancee matches 5.. if entity @s[advancements={halloween2023:quete/avancee={5=false}}] run advancement grant @s only halloween2023:quete/avancee 5

execute if score @s h23_avancee matches 6.. if entity @s[advancements={halloween2023:quete/avancee={6=false}}] run tellraw @s [{"text":"Francis Trouille","bold":true,"color":"#024050"},{"text":" : Tu as passé l'année 2019, bravo ! Voici tes 50 pièces temporelles.","color":"#C5CDB5","bold":false}]
execute if score @s h23_avancee matches 6.. if entity @s[advancements={halloween2023:quete/avancee={6=false}}] run scoreboard players add @s h23_monnaie 50
execute if score @s h23_avancee matches 6.. if entity @s[advancements={halloween2023:quete/avancee={6=false}}] run advancement grant @s only halloween2023:quete/avancee 6

execute if score @s h23_avancee matches 7.. if entity @s[advancements={halloween2023:quete/avancee={7=false}}] run tellraw @s [{"text":"Francis Trouille","bold":true,"color":"#024050"},{"text":" : Tu as passé l'année 2020, bravo ! Voici tes 50 pièces temporelles.","color":"#C5CDB5","bold":false}]
execute if score @s h23_avancee matches 7.. if entity @s[advancements={halloween2023:quete/avancee={7=false}}] run scoreboard players add @s h23_monnaie 50
execute if score @s h23_avancee matches 7.. if entity @s[advancements={halloween2023:quete/avancee={7=false}}] run advancement grant @s only halloween2023:quete/avancee 7

execute if score @s h23_avancee matches 8.. if entity @s[advancements={halloween2023:quete/avancee={8=false}}] run tellraw @s [{"text":"Francis Trouille","bold":true,"color":"#024050"},{"text":" : Tu as passé l'année 2021, bravo ! Voici tes 50 pièces temporelles.","color":"#C5CDB5","bold":false}]
execute if score @s h23_avancee matches 8.. if entity @s[advancements={halloween2023:quete/avancee={8=false}}] run scoreboard players add @s h23_monnaie 50
execute if score @s h23_avancee matches 8.. if entity @s[advancements={halloween2023:quete/avancee={8=false}}] run advancement grant @s only halloween2023:quete/avancee 8

execute if score @s h23_avancee matches 9.. if entity @s[advancements={halloween2023:quete/avancee={9=false}}] run tellraw @s [{"text":"Francis Trouille","bold":true,"color":"#024050"},{"text":" : Tu as passé l'année 2022, bravo ! Voici tes 50 pièces temporelles.","color":"#C5CDB5","bold":false}]
execute if score @s h23_avancee matches 9.. if entity @s[advancements={halloween2023:quete/avancee={9=false}}] run scoreboard players add @s h23_monnaie 50
execute if score @s h23_avancee matches 9.. if entity @s[advancements={halloween2023:quete/avancee={9=false}}] run advancement grant @s only halloween2023:quete/avancee 9

execute if entity @s[advancements={halloween2023:quete/avancee=true}] run tellraw @s [{"text":"Francis Trouille","bold":true,"color":"#024050"},{"text":" : Je t'ai donné toutes les récompenses. Maintenant, aide Bob à passer l'année 2023 !","color":"#C5CDB5","bold":false}]