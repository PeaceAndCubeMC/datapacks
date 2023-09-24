execute if entity @s[advancements={festin_estival:deblocage/sushi_saumon=true}] store result score pad_saumon fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/sushi_saumon=true}] store result score pad_riz fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/sushi_saumon=true}] unless score pad_saumon fe23_craft_count = pad_riz fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/sushi_saumon=true}] store result storage fe23_craft_count sushi_saumon int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/sushi_saumon=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/sushi_saumon=true}] positioned ~ ~0.6 ~ run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:cooked_salmon",Count:1b,tag:{display:{Name:'{"text":"Sushi de saumon","color":"#FAF5EF","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Un plat typique japonais, composé","color":"gray","italic":false}','{"text":"de riz et de saumon cru.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_sushi_saumon"]}}}
execute if entity @s[advancements={festin_estival:deblocage/sushi_saumon=true}] positioned ~ ~0.6 ~ run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:cooked_salmon",tag:{Tags:["fe23_sushi_saumon"]}}}] Item.Count set from storage minecraft:fe23_craft_count sushi_saumon

execute if entity @s[advancements={festin_estival:deblocage/sushi_saumon=true}] run advancement grant @s only festin_estival:craft/sushi_saumon
execute if entity @s[advancements={festin_estival:deblocage/sushi_saumon=true}] run advancement grant @s only peaceandcube:events/festin_estival sushi_saumon

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count sushi_saumon 15
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset pad_saumon fe23_craft_count
scoreboard players reset pad_riz fe23_craft_count
data remove storage fe23_craft_count sushi_saumon