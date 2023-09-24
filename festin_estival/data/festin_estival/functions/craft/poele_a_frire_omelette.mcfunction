execute if entity @s[advancements={festin_estival:deblocage/omelette=true}] store result storage fe23_craft_count omelette int 1 run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:egg"}},limit=1] Item.Count

execute if entity @s[advancements={festin_estival:deblocage/omelette=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:egg"}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/omelette=true}] run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:pumpkin_pie",Count:1b,tag:{display:{Name:'{"text":"Omelette","color":"#fff68f","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Un des plats préférés des français,","color":"gray","italic":false}','{"text":"fait avec des œufs battus.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7232,Tags:["fe23_omelette"]}}}
execute if entity @s[advancements={festin_estival:deblocage/omelette=true}] run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:pumpkin_pie",tag:{Tags:["fe23_omelette"]}}}] Item.Count set from storage minecraft:fe23_craft_count omelette

execute if entity @s[advancements={festin_estival:deblocage/omelette=true}] run advancement grant @s only festin_estival:craft/omelette
execute if entity @s[advancements={festin_estival:deblocage/omelette=true}] run advancement grant @s only peaceandcube:events/festin_estival omelette

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count omelette 1
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

data remove storage fe23_craft_count omelette