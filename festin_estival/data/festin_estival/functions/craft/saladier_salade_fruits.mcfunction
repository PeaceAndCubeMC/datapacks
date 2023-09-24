execute if entity @s[advancements={festin_estival:deblocage/salade_fruits=true}] store result score sal_pomme fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:apple"}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/salade_fruits=true}] store result score sal_poire fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:apple",tag:{Tags:["fe23_poire"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/salade_fruits=true}] store result score sal_fraise fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:sweet_berries",tag:{Tags:["fe23_fraise"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/salade_fruits=true}] store result score sal_pasteque fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:melon_slice"}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/salade_fruits=true}] store result score sal_bol fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:bowl"}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/salade_fruits=true}] unless score sal_pomme fe23_craft_count = sal_poire fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/salade_fruits=true}] unless score sal_pomme fe23_craft_count = sal_fraise fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/salade_fruits=true}] unless score sal_pomme fe23_craft_count = sal_pasteque fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/salade_fruits=true}] unless score sal_pomme fe23_craft_count = sal_bol fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/salade_fruits=true}] store result storage fe23_craft_count salade_fruits int 1 run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:apple",tag:{Tags:["fe23_poire"]}}},limit=1] Item.Count

execute if entity @s[advancements={festin_estival:deblocage/salade_fruits=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:apple",tag:{Tags:["fe23_poire"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/salade_fruits=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:apple"}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/salade_fruits=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:sweet_berries",tag:{Tags:["fe23_fraise"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/salade_fruits=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:melon_slice"}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/salade_fruits=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:bowl"}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/salade_fruits=true}] positioned ~ ~0.35 ~ run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:rabbit_stew",Count:1b,tag:{display:{Name:'{"text":"Salade de fruits","color":"#C9CC3F","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Un mélange de divers fruits, se","color":"gray","italic":false}','{"text":"mangeant en dessert et en toute","color":"gray","italic":false}','{"text":"saison.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7231,Tags:["fe23_salade_fruits"]}}}
execute if entity @s[advancements={festin_estival:deblocage/salade_fruits=true}] positioned ~ ~0.35 ~ run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:rabbit_stew",tag:{Tags:["fe23_salade_fruits"]}}}] Item.Count set from storage minecraft:fe23_craft_count salade_fruits

execute if entity @s[advancements={festin_estival:deblocage/salade_fruits=true}] run advancement grant @s only festin_estival:craft/salade_fruits
execute if entity @s[advancements={festin_estival:deblocage/salade_fruits=true}] run advancement grant @s only peaceandcube:events/festin_estival salade_fruits

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count salade_fruits 30
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset sal_pomme fe23_craft_count
scoreboard players reset sal_poire fe23_craft_count
scoreboard players reset sal_fraise fe23_craft_count
scoreboard players reset sal_pasteque fe23_craft_count
scoreboard players reset sal_bol fe23_craft_count
data remove storage fe23_craft_count salade_fruits