execute if entity @s[advancements={festin_estival:deblocage/tomate_farcie=true}] store result score pdt_tf_riz fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/tomate_farcie=true}] store result score pdt_tf_boeuf fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/tomate_farcie=true}] store result score pdt_tf_tomate fe23_craft_count run data get block ~ ~ ~ Items[2].Count
execute if entity @s[advancements={festin_estival:deblocage/tomate_farcie=true}] unless score pdt_tf_tomate fe23_craft_count = pdt_tf_riz fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/tomate_farcie=true}] unless score pdt_tf_tomate fe23_craft_count = pdt_tf_boeuf fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/tomate_farcie=true}] store result storage fe23_craft_count tomate_farcie int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/tomate_farcie=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/tomate_farcie=true}] run data modify block ~ ~ ~ Items append value {Slot:4b,id:"minecraft:cooked_beef",Count:1b,tag:{display:{Name:'{"text":"Tomate farcie","color":"#FF6347","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Un plat typique du sud de la France,","color":"gray","italic":false}','{"text":"préparé avec une tomate, de la viande","color":"gray","italic":false}','{"text":"farcie et du riz.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_tomate_farcie"]}}
execute if entity @s[advancements={festin_estival:deblocage/tomate_farcie=true}] run data modify block ~ ~ ~ Items[0].Count set from storage minecraft:fe23_craft_count tomate_farcie

execute if entity @s[advancements={festin_estival:deblocage/tomate_farcie=true}] run advancement grant @s only festin_estival:craft/tomate_farcie
execute if entity @s[advancements={festin_estival:deblocage/tomate_farcie=true}] run advancement grant @s only peaceandcube:events/festin_estival tomate_farcie

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count tomate_farcie 20
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset pdt_tf_riz fe23_craft_count
scoreboard players reset pdt_tf_boeuf fe23_craft_count
scoreboard players reset pdt_tf_tomate fe23_craft_count
data remove storage fe23_craft_count tomate_farcie