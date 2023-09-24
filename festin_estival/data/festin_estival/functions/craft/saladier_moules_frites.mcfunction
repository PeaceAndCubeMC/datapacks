execute if entity @s[advancements={festin_estival:deblocage/moules_frites=true}] store result score sal_frites fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:baked_potato",tag:{Tags:["fe23_frites"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/moules_frites=true}] store result score sal_moule fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:tropical_fish",tag:{Tags:["fe23_moule"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/moules_frites=true}] unless score sal_frites fe23_craft_count = sal_moule fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/moules_frites=true}] store result storage fe23_craft_count moules_frites int 1 run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:baked_potato",tag:{Tags:["fe23_frites"]}}},limit=1] Item.Count

execute if entity @s[advancements={festin_estival:deblocage/moules_frites=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:baked_potato",tag:{Tags:["fe23_frites"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/moules_frites=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:tropical_fish",tag:{Tags:["fe23_moule"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/moules_frites=true}] positioned ~ ~0.35 ~ run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:cooked_salmon",Count:1b,tag:{display:{Name:'{"text":"Moules frites","color":"#455565","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une spécialité venant de la Belgique","color":"gray","italic":false}','{"text":"et du nord de la France, dont les","color":"gray","italic":false}','{"text":"ingrédients restent mystérieux...","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7232,Tags:["fe23_moules_frites"]}}}
execute if entity @s[advancements={festin_estival:deblocage/moules_frites=true}] positioned ~ ~0.35 ~ run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:cooked_salmon",tag:{Tags:["fe23_moules_frites"]}}}] Item.Count set from storage minecraft:fe23_craft_count moules_frites

execute if entity @s[advancements={festin_estival:deblocage/moules_frites=true}] run advancement grant @s only festin_estival:craft/moules_frites
execute if entity @s[advancements={festin_estival:deblocage/moules_frites=true}] run advancement grant @s only peaceandcube:events/festin_estival moules_frites

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count moules_frites 10
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset sal_frites fe23_craft_count
scoreboard players reset sal_moule fe23_craft_count
data remove storage fe23_craft_count moules_frites