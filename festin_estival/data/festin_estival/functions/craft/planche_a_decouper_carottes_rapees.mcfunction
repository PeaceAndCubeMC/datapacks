execute if entity @s[advancements={festin_estival:deblocage/carottes_rapees=true}] store result storage fe23_craft_count carottes_rapees int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/carottes_rapees=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/carottes_rapees=true}] positioned ~ ~0.6 ~ run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:carrot",Count:1b,tag:{display:{Name:'{"text":"Carottes râpées","color":"#ED9121","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Des carottes, mais râpées.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_carottes_rapees"]}}}
execute if entity @s[advancements={festin_estival:deblocage/carottes_rapees=true}] positioned ~ ~0.6 ~ run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:carrot",tag:{Tags:["fe23_carottes_rapees"]}}}] Item.Count set from storage minecraft:fe23_craft_count carottes_rapees

execute if entity @s[advancements={festin_estival:deblocage/carottes_rapees=true}] run advancement grant @s only festin_estival:craft/carottes_rapees
execute if entity @s[advancements={festin_estival:deblocage/carottes_rapees=true}] run advancement grant @s only peaceandcube:events/festin_estival carottes_rapees

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count carottes_rapees 1
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

data remove storage fe23_craft_count carottes_rapees