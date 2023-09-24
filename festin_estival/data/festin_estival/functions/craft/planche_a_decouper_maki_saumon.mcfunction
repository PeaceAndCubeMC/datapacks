execute if entity @s[advancements={festin_estival:deblocage/maki_saumon=true}] store result score pad_algue fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/maki_saumon=true}] store result score pad_saumon fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/maki_saumon=true}] store result score pad_avocat fe23_craft_count run data get block ~ ~ ~ Items[2].Count
execute if entity @s[advancements={festin_estival:deblocage/maki_saumon=true}] store result score pad_riz fe23_craft_count run data get block ~ ~ ~ Items[3].Count
execute if entity @s[advancements={festin_estival:deblocage/maki_saumon=true}] unless score pad_saumon fe23_craft_count = pad_algue fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/maki_saumon=true}] unless score pad_saumon fe23_craft_count = pad_avocat fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/maki_saumon=true}] unless score pad_saumon fe23_craft_count = pad_riz fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/maki_saumon=true}] store result storage fe23_craft_count maki_saumon int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/maki_saumon=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/maki_saumon=true}] positioned ~ ~0.6 ~ run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:cooked_salmon",Count:1b,tag:{display:{Name:'{"text":"Maki de saumon","color":"#FAF5EF","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Signifiant « sushi roulé », le","color":"gray","italic":false}','{"text":"makizushi se présente comme du","color":"gray","italic":false}','{"text":"riz, du saumon cru et de l\'avocat","color":"gray","italic":false}','{"text":"enroulés dans une algue séchée.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7233,Tags:["fe23_maki_saumon"]}}}
execute if entity @s[advancements={festin_estival:deblocage/maki_saumon=true}] positioned ~ ~0.6 ~ run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:cooked_salmon",tag:{Tags:["fe23_maki_saumon"]}}}] Item.Count set from storage minecraft:fe23_craft_count maki_saumon

execute if entity @s[advancements={festin_estival:deblocage/maki_saumon=true}] run advancement grant @s only festin_estival:craft/maki_saumon
execute if entity @s[advancements={festin_estival:deblocage/maki_saumon=true}] run advancement grant @s only peaceandcube:events/festin_estival maki_saumon

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count maki_saumon 20
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset pad_algue fe23_craft_count
scoreboard players reset pad_saumon fe23_craft_count
scoreboard players reset pad_avocat fe23_craft_count
scoreboard players reset pad_riz fe23_craft_count
data remove storage fe23_craft_count maki_saumon