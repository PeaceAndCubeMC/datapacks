execute if entity @s[advancements={festin_estival:deblocage/saucisse=true}] store result score pad_sau_sel fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/saucisse=true}] store result score pad_sau_porc fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/saucisse=true}] unless score pad_sau_sel fe23_craft_count = pad_sau_porc fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/saucisse=true}] store result storage fe23_craft_count saucisse int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/saucisse=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/saucisse=true}] positioned ~ ~0.6 ~ run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:porkchop",Count:1b,tag:{display:{Name:'{"text":"Saucisse","color":"#e67c7c","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"De la saucisse de porc, un","color":"gray","italic":false}','{"text":"type de charcuterie composé de","color":"gray","italic":false}','{"text":"divers morceaux de viande.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7231,Tags:["fe23_saucisse"]}}}
execute if entity @s[advancements={festin_estival:deblocage/saucisse=true}] positioned ~ ~0.6 ~ run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:porkchop",tag:{Tags:["fe23_saucisse"]}}}] Item.Count set from storage minecraft:fe23_craft_count saucisse

execute if entity @s[advancements={festin_estival:deblocage/saucisse=true}] run advancement grant @s only festin_estival:craft/saucisse
execute if entity @s[advancements={festin_estival:deblocage/saucisse=true}] run advancement grant @s only peaceandcube:events/festin_estival saucisse

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count saucisse 10
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset pad_sau_sel fe23_craft_count
scoreboard players reset pad_sau_porc fe23_craft_count
data remove storage fe23_craft_count saucisse