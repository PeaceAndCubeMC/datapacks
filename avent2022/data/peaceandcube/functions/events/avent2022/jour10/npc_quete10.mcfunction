execute unless score @s noel2022_jour10 matches 0.. unless entity @s[nbt={SelectedItem:{id:"minecraft:stick",Count:1b,tag:{Tags:["Noel2022_quete10"]}}}] run tellraw @s ["",{"text":"[","color":"dark_red"},{"text":"Noël ","color":"white"},{"text":"2022","color":"red"},{"text":"] ","color":"dark_red"},{"text":"Guy Hirhland : ","color":"yellow"},{"text":"Salut l'ami, je me présente je suis ","color":"white"},{"text":"Guy Hirhland","bold":true,"color":"white"},{"text":". J'ai envoyé des Bâton de bois à certaines personnes pour qu'elles m'aident à réaliser certaines taches. Si tu en possède un, montre le moi en le prennant dans ta main principale !' ","color":"white"}]

execute if score @s noel2022_jour10 matches 0.. run function peaceandcube:events/avent2022/jour10/quete_jour10
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stick",Count:1b,tag:{Tags:["Noel2022_quete10"]}}}] run function peaceandcube:events/avent2022/jour10/quete_jour10
