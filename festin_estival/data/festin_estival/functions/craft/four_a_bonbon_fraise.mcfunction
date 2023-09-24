execute if entity @s[advancements={festin_estival:deblocage/bonbon_fraise=true}] store result score fab_bf_sucre fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/bonbon_fraise=true}] store result score fab_bf_fraise fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/bonbon_fraise=true}] unless score fab_bf_sucre fe23_craft_count = fab_bf_fraise fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/bonbon_fraise=true}] store result storage fe23_craft_count bonbon_fraise int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/bonbon_fraise=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/bonbon_fraise=true}] run data modify block ~ ~ ~ Items append value {Slot:4b,id:"minecraft:glow_berries",Count:1b,tag:{display:{Name:'{"text":"Bonbon à la fraise","color":"#C83F49","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une confiserie très sucrée,","color":"gray","italic":false}','{"text":"aromatisée à la fraise.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7232,Tags:["fe23_bonbon_fraise"]}}
execute if entity @s[advancements={festin_estival:deblocage/bonbon_fraise=true}] run data modify block ~ ~ ~ Items[0].Count set from storage minecraft:fe23_craft_count bonbon_fraise

execute if entity @s[advancements={festin_estival:deblocage/bonbon_fraise=true}] run advancement grant @s only festin_estival:craft/bonbon_fraise
execute if entity @s[advancements={festin_estival:deblocage/bonbon_fraise=true}] run advancement grant @s only peaceandcube:events/festin_estival bonbon_fraise

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count bonbon_fraise 5
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset fab_bf_sucre fe23_craft_count
scoreboard players reset fab_bf_fraise fe23_craft_count
data remove storage fe23_craft_count bonbon_fraise