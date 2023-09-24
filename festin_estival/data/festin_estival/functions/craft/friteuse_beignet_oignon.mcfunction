execute if entity @s[advancements={festin_estival:deblocage/beignet_oignon=true}] store result score fri_oignon fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:beetroot",tag:{Tags:["fe23_oignon"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/beignet_oignon=true}] store result score fri_sel fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:sugar",tag:{Tags:["fe23_sel"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/beignet_oignon=true}] store result score fri_huile fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:potion",tag:{Tags:["fe23_huile_tournesol"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/beignet_oignon=true}] unless score fri_oignon fe23_craft_count = fri_sel fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/beignet_oignon=true}] unless score fri_oignon fe23_craft_count = fri_huile fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/beignet_oignon=true}] store result storage fe23_craft_count beignet_oignon int 1 run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:sugar",tag:{Tags:["fe23_sel"]}}},limit=1] Item.Count

execute if entity @s[advancements={festin_estival:deblocage/beignet_oignon=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:beetroot",tag:{Tags:["fe23_oignon"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/beignet_oignon=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:sugar",tag:{Tags:["fe23_sel"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/beignet_oignon=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:potion",tag:{Tags:["fe23_huile_tournesol"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/beignet_oignon=true}] positioned ~ ~0.75 ~0.3 run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:baked_potato",Count:1b,tag:{display:{Name:'{"text":"Beignet d\'oignon","color":"#F5B51E","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Un accompagnement fait avec des","color":"gray","italic":false}','{"text":"rondelles d\'oignon fries, plus connu","color":"gray","italic":false}','{"text":"sous le nom de « onion ring ».","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7232,Tags:["fe23_beignet_oignon"]}}}
execute if entity @s[advancements={festin_estival:deblocage/beignet_oignon=true}] positioned ~ ~0.75 ~0.3 run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:baked_potato",tag:{Tags:["fe23_beignet_oignon"]}}}] Item.Count set from storage minecraft:fe23_craft_count beignet_oignon

execute if entity @s[advancements={festin_estival:deblocage/beignet_oignon=true}] run advancement grant @s only festin_estival:craft/beignet_oignon
execute if entity @s[advancements={festin_estival:deblocage/beignet_oignon=true}] run advancement grant @s only peaceandcube:events/festin_estival beignet_oignon

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count beignet_oignon 15
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset fri_oignon fe23_craft_count
scoreboard players reset fri_sel fe23_craft_count
scoreboard players reset fri_huile fe23_craft_count
data remove storage fe23_craft_count beignet_oignon