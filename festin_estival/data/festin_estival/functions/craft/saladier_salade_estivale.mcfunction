execute if entity @s[advancements={festin_estival:deblocage/salade_estivale=true}] store result score sal_salade fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:apple",tag:{Tags:["fe23_salade_verte"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/salade_estivale=true}] store result score sal_tomate fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:apple",tag:{Tags:["fe23_tomate"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/salade_estivale=true}] store result score sal_avocat fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:apple",tag:{Tags:["fe23_avocat"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/salade_estivale=true}] store result score sal_fromage fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:baked_potato",tag:{Tags:["fe23_fromage"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/salade_estivale=true}] store result score sal_bol fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:bowl"}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/salade_estivale=true}] unless score sal_salade fe23_craft_count = sal_tomate fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/salade_estivale=true}] unless score sal_salade fe23_craft_count = sal_avocat fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/salade_estivale=true}] unless score sal_salade fe23_craft_count = sal_fromage fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/salade_estivale=true}] unless score sal_salade fe23_craft_count = sal_bol fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/salade_estivale=true}] store result storage fe23_craft_count salade_estivale int 1 run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:apple",tag:{Tags:["fe23_salade_verte"]}}},limit=1] Item.Count

execute if entity @s[advancements={festin_estival:deblocage/salade_estivale=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:apple",tag:{Tags:["fe23_salade_verte"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/salade_estivale=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:apple",tag:{Tags:["fe23_tomate"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/salade_estivale=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:apple",tag:{Tags:["fe23_avocat"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/salade_estivale=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:baked_potato",tag:{Tags:["fe23_fromage"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/salade_estivale=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:bowl"}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/salade_estivale=true}] positioned ~ ~0.35 ~ run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:rabbit_stew",Count:1b,tag:{display:{Name:'{"text":"Salade estivale","color":"#4BA351","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une salade bien garnie, regroupant","color":"gray","italic":false}','{"text":"des légumes de saison, et du","color":"gray","italic":false}','{"text":"fromage.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_salade_estivale"]}}}
execute if entity @s[advancements={festin_estival:deblocage/salade_estivale=true}] positioned ~ ~0.35 ~ run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:rabbit_stew",tag:{Tags:["fe23_salade_estivale"]}}}] Item.Count set from storage minecraft:fe23_craft_count salade_estivale

execute if entity @s[advancements={festin_estival:deblocage/salade_estivale=true}] run advancement grant @s only festin_estival:craft/salade_estivale
execute if entity @s[advancements={festin_estival:deblocage/salade_estivale=true}] run advancement grant @s only peaceandcube:events/festin_estival salade_estivale

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count salade_estivale 30
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset sal_salade fe23_craft_count
scoreboard players reset sal_tomate fe23_craft_count
scoreboard players reset sal_avocat fe23_craft_count
scoreboard players reset sal_fromage fe23_craft_count
scoreboard players reset sal_bol fe23_craft_count
data remove storage fe23_craft_count salade_estivale