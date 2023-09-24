execute if entity @s[advancements={festin_estival:deblocage/chocolat_noir=true}] store result score pdt_choc_n_sucre fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/chocolat_noir=true}] store result score pdt_choc_n_cacao fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/chocolat_noir=true}] unless score pdt_choc_n_sucre fe23_craft_count = pdt_choc_n_cacao fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/chocolat_noir=true}] store result storage fe23_craft_count chocolat_noir int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/chocolat_noir=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/chocolat_noir=true}] run data modify block ~ ~ ~ Items append value {Slot:4b,id:"minecraft:cookie",Count:1b,tag:{display:{Name:'{"text":"Chocolat noir","color":"#332421","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Un chocolat gourmand mais peu sucré,","color":"gray","italic":false}','{"text":"réputé pour son apport en magnésium.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_chocolat_noir"]}}
execute if entity @s[advancements={festin_estival:deblocage/chocolat_noir=true}] run data modify block ~ ~ ~ Items[0].Count set from storage minecraft:fe23_craft_count chocolat_noir

execute if entity @s[advancements={festin_estival:deblocage/chocolat_noir=true}] run advancement grant @s only festin_estival:craft/chocolat_noir
execute if entity @s[advancements={festin_estival:deblocage/chocolat_noir=true}] run advancement grant @s only peaceandcube:events/festin_estival chocolat_noir

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count chocolat_noir 5
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset pdt_choc_n_sucre fe23_craft_count
scoreboard players reset pdt_choc_n_cacao fe23_craft_count
data remove storage fe23_craft_count chocolat_noir