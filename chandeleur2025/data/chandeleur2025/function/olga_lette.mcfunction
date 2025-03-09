# Déjà donné

execute if score @s chandeleur2025_olga matches 1 run tellraw @s ["",{"text":"\n"},{"text":"Olga Lette :","color":"light_purple"},{"text":" J'espère que tu te régales avec toutes ces crêpes !","color":"white"},{"text":"\n\n "}]
execute if score @s chandeleur2025_olga matches 1 run return 0

# Premier dialogue

execute unless score @s chandeleur2025_olga matches 0.. run scoreboard players set @s chandeleur2025_olga 0
execute if score @s chandeleur2025_olga matches 0 run tellraw @s ["",{"text":"\n"},{"text":"Olga Lette :","color":"light_purple"},{"text":" Bonjour, mon oncle Giuseppe Perroni m'a envoyé ici pour fêter la Chandeleur avec vous. Voici un livre de recettes qui compile les meilleurs crêpes que je connaisse !","color":"white"},{"text":"\n\n "}]
execute if score @s chandeleur2025_olga matches 0 run function chandeleur2025:livre_des_crepes
execute if score @s chandeleur2025_olga matches 0 run scoreboard players set @s chandeleur2025_olga 1