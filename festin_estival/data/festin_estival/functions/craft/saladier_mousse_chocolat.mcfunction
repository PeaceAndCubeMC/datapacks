execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] store result score sal_oeuf fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:egg"}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] store result score sal_choc_n fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:cookie",tag:{Tags:["fe23_chocolat_noir"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] store result score sal_choc_l fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:cookie",tag:{Tags:["fe23_chocolat_lait"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] store result score sal_choc_b fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:cookie",tag:{Tags:["fe23_chocolat_blanc"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] store result score sal_bol fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:bowl"}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] unless score sal_oeuf fe23_craft_count = sal_choc_n fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] unless score sal_oeuf fe23_craft_count = sal_choc_l fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] unless score sal_oeuf fe23_craft_count = sal_choc_b fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] unless score sal_oeuf fe23_craft_count = sal_bol fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] store result storage fe23_craft_count mousse_chocolat int 1 run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:egg"}},limit=1] Item.Count

execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:egg"}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:cookie",tag:{Tags:["fe23_chocolat_noir"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:cookie",tag:{Tags:["fe23_chocolat_lait"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:cookie",tag:{Tags:["fe23_chocolat_blanc"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:bowl"}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] positioned ~ ~0.35 ~ run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:mushroom_stew",Count:1b,tag:{display:{Name:'{"text":"Mousse aux trois chocolats","color":"#84563C","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Un dessert délicieux fait à partir","color":"gray","italic":false}','{"text":"de chocolat et de blanc d\'oeuf monté","color":"gray","italic":false}','{"text":"en neige.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_mousse_chocolat"]}}}
execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] positioned ~ ~0.35 ~ run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:mushroom_stew",tag:{Tags:["fe23_mousse_chocolat"]}}}] Item.Count set from storage minecraft:fe23_craft_count mousse_chocolat

execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] run advancement grant @s only festin_estival:craft/mousse_chocolat
execute if entity @s[advancements={festin_estival:deblocage/mousse_chocolat=true}] run advancement grant @s only peaceandcube:events/festin_estival mousse_chocolat

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count mousse_chocolat 30
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset sal_oeuf fe23_craft_count
scoreboard players reset sal_choc_n fe23_craft_count
scoreboard players reset sal_choc_l fe23_craft_count
scoreboard players reset sal_choc_b fe23_craft_count
scoreboard players reset sal_bol fe23_craft_count
data remove storage fe23_craft_count mousse_chocolat