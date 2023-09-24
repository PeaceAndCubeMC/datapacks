execute if entity @s[advancements={festin_estival:deblocage/jambon=true}] store result storage fe23_craft_count jambon int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/jambon=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/jambon=true}] positioned ~ ~0.6 ~ run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:porkchop",Count:1b,tag:{display:{Name:'{"text":"Jambon","color":"#ffaa99","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Du jambon de porc, un type de","color":"gray","italic":false}','{"text":"charcuterie considéré comme un","color":"gray","italic":false}','{"text":"plat de fête au Moyen-Âge.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_jambon"]}}}
execute if entity @s[advancements={festin_estival:deblocage/jambon=true}] positioned ~ ~0.6 ~ run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:porkchop",tag:{Tags:["fe23_jambon"]}}}] Item.Count set from storage minecraft:fe23_craft_count jambon

execute if entity @s[advancements={festin_estival:deblocage/jambon=true}] run advancement grant @s only festin_estival:craft/jambon
execute if entity @s[advancements={festin_estival:deblocage/jambon=true}] run advancement grant @s only peaceandcube:events/festin_estival jambon

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count jambon 5
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

data remove storage fe23_craft_count jambon