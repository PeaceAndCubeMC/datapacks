execute if entity @s[advancements={festin_estival:deblocage/chocolat_lait=true}] store result score pdt_choc_l_sucre fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/chocolat_lait=true}] store result score pdt_choc_l_cacao fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/chocolat_lait=true}] store result score pdt_choc_l_lait fe23_craft_count run data get block ~ ~ ~ Items[2].Count
execute if entity @s[advancements={festin_estival:deblocage/chocolat_lait=true}] unless score pdt_choc_l_sucre fe23_craft_count = pdt_choc_l_cacao fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/chocolat_lait=true}] unless score pdt_choc_l_sucre fe23_craft_count = pdt_choc_l_lait fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/chocolat_lait=true}] store result storage fe23_craft_count chocolat_lait int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/chocolat_lait=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/chocolat_lait=true}] run data modify block ~ ~ ~ Items append value {Slot:4b,id:"minecraft:cookie",Count:1b,tag:{display:{Name:'{"text":"Chocolat au lait","color":"#84563c","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Un chocolat composé de cacao, de","color":"gray","italic":false}','{"text":"lait et de sucre, très populaire","color":"gray","italic":false}','{"text":"à Pâques et à Noël.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7231,Tags:["fe23_chocolat_lait"]}}
execute if entity @s[advancements={festin_estival:deblocage/chocolat_lait=true}] run data modify block ~ ~ ~ Items[0].Count set from storage minecraft:fe23_craft_count chocolat_lait

execute if entity @s[advancements={festin_estival:deblocage/chocolat_lait=true}] run advancement grant @s only festin_estival:craft/chocolat_lait
execute if entity @s[advancements={festin_estival:deblocage/chocolat_lait=true}] run advancement grant @s only peaceandcube:events/festin_estival chocolat_lait

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count chocolat_lait 5
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset pdt_choc_l_sucre fe23_craft_count
scoreboard players reset pdt_choc_l_cacao fe23_craft_count
scoreboard players reset pdt_choc_l_lait fe23_craft_count
data remove storage fe23_craft_count chocolat_lait