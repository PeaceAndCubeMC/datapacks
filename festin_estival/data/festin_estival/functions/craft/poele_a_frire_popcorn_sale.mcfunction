execute if entity @s[advancements={festin_estival:deblocage/popcorn_sale=true}] store result score paf_mais fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:wheat",tag:{Tags:["fe23_mais"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/popcorn_sale=true}] store result score paf_sel fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:sugar",tag:{Tags:["fe23_sel"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/popcorn_sale=true}] unless score paf_mais fe23_craft_count = paf_sel fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/popcorn_sale=true}] store result storage fe23_craft_count popcorn_sale int 1 run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:wheat",tag:{Tags:["fe23_mais"]}}},limit=1] Item.Count

execute if entity @s[advancements={festin_estival:deblocage/popcorn_sale=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:wheat",tag:{Tags:["fe23_mais"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/popcorn_sale=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:sugar",tag:{Tags:["fe23_sel"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/popcorn_sale=true}] run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:potato",Count:1b,tag:{display:{Name:'{"text":"Popcorn salé","color":"#FDEDAD","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Du maïs soufflé salé, généralement","color":"gray","italic":false}','{"text":"consommé en regardant un bon film.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7231,Tags:["fe23_popcorn_sale"]}}}
execute if entity @s[advancements={festin_estival:deblocage/popcorn_sale=true}] run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:potato",tag:{Tags:["fe23_popcorn_sale"]}}}] Item.Count set from storage minecraft:fe23_craft_count popcorn_sale

execute if entity @s[advancements={festin_estival:deblocage/popcorn_sale=true}] run advancement grant @s only festin_estival:craft/popcorn_sale
execute if entity @s[advancements={festin_estival:deblocage/popcorn_sale=true}] run advancement grant @s only peaceandcube:events/festin_estival popcorn_sale

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count popcorn_sale 10
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset paf_mais fe23_craft_count
scoreboard players reset paf_sel fe23_craft_count
data remove storage fe23_craft_count popcorn_sale