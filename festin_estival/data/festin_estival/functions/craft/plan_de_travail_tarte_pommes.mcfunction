execute if entity @s[advancements={festin_estival:deblocage/tarte_pommes=true}] store result score pdt_tarte_p_oeuf fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/tarte_pommes=true}] store result score pdt_tarte_p_sucre fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/tarte_pommes=true}] store result score pdt_tarte_p_pomme fe23_craft_count run data get block ~ ~ ~ Items[2].Count
execute if entity @s[advancements={festin_estival:deblocage/tarte_pommes=true}] store result score pdt_tarte_p_farine fe23_craft_count run data get block ~ ~ ~ Items[3].Count
execute if entity @s[advancements={festin_estival:deblocage/tarte_pommes=true}] unless score pdt_tarte_p_oeuf fe23_craft_count = pdt_tarte_p_sucre fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/tarte_pommes=true}] unless score pdt_tarte_p_oeuf fe23_craft_count = pdt_tarte_p_pomme fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/tarte_pommes=true}] unless score pdt_tarte_p_oeuf fe23_craft_count = pdt_tarte_p_farine fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/tarte_pommes=true}] store result storage fe23_craft_count tarte_pommes int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/tarte_pommes=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/tarte_pommes=true}] run data modify block ~ ~ ~ Items append value {Slot:4b,id:"minecraft:pumpkin_pie",Count:1b,tag:{display:{Name:'{"text":"Tarte aux pommes","color":"#e7b985","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une bonne tarte aux pommes,","color":"gray","italic":false}','{"text":"préparée façon grand-mère.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_tarte_pommes"]}}
execute if entity @s[advancements={festin_estival:deblocage/tarte_pommes=true}] run data modify block ~ ~ ~ Items[0].Count set from storage minecraft:fe23_craft_count tarte_pommes

execute if entity @s[advancements={festin_estival:deblocage/tarte_pommes=true}] run advancement grant @s only festin_estival:craft/tarte_pommes
execute if entity @s[advancements={festin_estival:deblocage/tarte_pommes=true}] run advancement grant @s only peaceandcube:events/festin_estival tarte_pommes

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count tarte_pommes 30
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset pdt_tarte_p_oeuf fe23_craft_count
scoreboard players reset pdt_tarte_p_sucre fe23_craft_count
scoreboard players reset pdt_tarte_p_pomme fe23_craft_count
scoreboard players reset pdt_tarte_p_farine fe23_craft_count
data remove storage fe23_craft_count tarte_pommes