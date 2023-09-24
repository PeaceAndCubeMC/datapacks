execute if entity @s[advancements={festin_estival:deblocage/frites=true}] store result score fri_patate fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:potato"}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/frites=true}] store result score fri_sel fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:sugar",tag:{Tags:["fe23_sel"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/frites=true}] store result score fri_huile fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:potion",tag:{Tags:["fe23_huile_tournesol"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/frites=true}] unless score fri_patate fe23_craft_count = fri_sel fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/frites=true}] unless score fri_patate fe23_craft_count = fri_huile fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/frites=true}] store result storage fe23_craft_count frites int 1 run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:sugar",tag:{Tags:["fe23_sel"]}}},limit=1] Item.Count

execute if entity @s[advancements={festin_estival:deblocage/frites=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:potato"}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/frites=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:sugar",tag:{Tags:["fe23_sel"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/frites=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:potion",tag:{Tags:["fe23_huile_tournesol"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/frites=true}] positioned ~ ~0.75 ~0.3 run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:baked_potato",Count:1b,tag:{display:{Name:'{"text":"Frites","color":"#f5b51e","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Des bâtonnets de pomme de terre,","color":"gray","italic":false}','{"text":"d\'origine française... ou belge.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_frites"]}}}
execute if entity @s[advancements={festin_estival:deblocage/frites=true}] positioned ~ ~0.75 ~0.3 run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:baked_potato",tag:{Tags:["fe23_frites"]}}}] Item.Count set from storage minecraft:fe23_craft_count frites

execute if entity @s[advancements={festin_estival:deblocage/frites=true}] run advancement grant @s only festin_estival:craft/frites
execute if entity @s[advancements={festin_estival:deblocage/frites=true}] run advancement grant @s only peaceandcube:events/festin_estival frites

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count frites 15
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset fri_patate fe23_craft_count
scoreboard players reset fri_sel fe23_craft_count
scoreboard players reset fri_huile fe23_craft_count
data remove storage fe23_craft_count frites