execute if entity @s[advancements={festin_estival:deblocage/ratatouille=true}] store result score sal_tomate fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:apple",tag:{Tags:["fe23_tomate"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/ratatouille=true}] store result score sal_carotte fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:carrot"}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/ratatouille=true}] store result score sal_patate fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:potato"}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/ratatouille=true}] store result score sal_bol fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:bowl"}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/ratatouille=true}] unless score sal_tomate fe23_craft_count = sal_carotte fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/ratatouille=true}] unless score sal_tomate fe23_craft_count = sal_patate fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/ratatouille=true}] unless score sal_tomate fe23_craft_count = sal_bol fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/ratatouille=true}] store result storage fe23_craft_count ratatouille int 1 run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:apple",tag:{Tags:["fe23_tomate"]}}},limit=1] Item.Count

execute if entity @s[advancements={festin_estival:deblocage/ratatouille=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:apple",tag:{Tags:["fe23_tomate"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/ratatouille=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:carrot"}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/ratatouille=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:potato"}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/ratatouille=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:bowl"}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/ratatouille=true}] positioned ~ ~0.35 ~ run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:rabbit_stew",Count:1b,tag:{display:{Name:'{"text":"Ratatouille","color":"#a94c40","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une spécialité provenant du sud","color":"gray","italic":false}','{"text":"de la France, composé de divers","color":"gray","italic":false}','{"text":"légumes mijotés.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7232,Tags:["fe23_ratatouille"]}}}
execute if entity @s[advancements={festin_estival:deblocage/ratatouille=true}] positioned ~ ~0.35 ~ run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:rabbit_stew",tag:{Tags:["fe23_ratatouille"]}}}] Item.Count set from storage minecraft:fe23_craft_count ratatouille

execute if entity @s[advancements={festin_estival:deblocage/ratatouille=true}] run advancement grant @s only festin_estival:craft/ratatouille
execute if entity @s[advancements={festin_estival:deblocage/ratatouille=true}] run advancement grant @s only peaceandcube:events/festin_estival ratatouille

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count ratatouille 25
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset sal_tomate fe23_craft_count
scoreboard players reset sal_carotte fe23_craft_count
scoreboard players reset sal_patate fe23_craft_count
scoreboard players reset sal_bol fe23_craft_count
data remove storage fe23_craft_count ratatouille