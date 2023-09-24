execute if entity @s[advancements={festin_estival:deblocage/hot_dog=true}] store result score pdt_hd_saucisse fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/hot_dog=true}] store result score pdt_hd_pain fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/hot_dog=true}] unless score pdt_hd_saucisse fe23_craft_count = pdt_hd_pain fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/hot_dog=true}] store result storage fe23_craft_count hot_dog int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/hot_dog=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/hot_dog=true}] run data modify block ~ ~ ~ Items append value {Slot:4b,id:"minecraft:cooked_chicken",Count:1b,tag:{display:{Name:'{"text":"Hot dog","color":"#C68958","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Parfois appelé « chien chaud » au","color":"gray","italic":false}','{"text":"Québec, le hot dog est un pain","color":"gray","italic":false}','{"text":"allongé fourré d\'une saucisse.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_hot_dog"]}}
execute if entity @s[advancements={festin_estival:deblocage/hot_dog=true}] run data modify block ~ ~ ~ Items[0].Count set from storage minecraft:fe23_craft_count hot_dog

execute if entity @s[advancements={festin_estival:deblocage/hot_dog=true}] run advancement grant @s only festin_estival:craft/hot_dog
execute if entity @s[advancements={festin_estival:deblocage/hot_dog=true}] run advancement grant @s only peaceandcube:events/festin_estival hot_dog

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count hot_dog 15
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset pdt_hd_saucisse fe23_craft_count
scoreboard players reset pdt_hd_pain fe23_craft_count
data remove storage fe23_craft_count hot_dog