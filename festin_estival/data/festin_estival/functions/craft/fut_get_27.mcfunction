execute if entity @s[advancements={festin_estival:deblocage/get_27=true}] store result score fut_sucre fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/get_27=true}] store result score fut_menthe fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/get_27=true}] store result score fut_fiole fe23_craft_count run data get block ~ ~ ~ Items[2].Count
execute if entity @s[advancements={festin_estival:deblocage/get_27=true}] unless score fut_sucre fe23_craft_count = fut_menthe fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/get_27=true}] unless score fut_sucre fe23_craft_count = fut_fiole fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/get_27=true}] store result storage fe23_craft_count get_27 int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/get_27=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/get_27=true}] positioned ~2 ~-1 ~ run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Get 27","color":"#3EB489","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une liqueur de menthe sucrée","color":"gray","italic":false}','{"text":"créée en Haute-Garonne, et bue","color":"gray","italic":false}','{"text":"en apéritif et dans des cocktails.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},HideFlags:32,CustomModelData:7240,Tags:["fe23_get_27"],CustomPotionEffects:[{Id:2,Amplifier:1b,Duration:200,ShowParticles:0b},{Id:8,Amplifier:2b,Duration:400,ShowParticles:0b},{Id:9,Amplifier:1b,Duration:80},{Id:23,Amplifier:2b,Duration:20,ShowParticles:0b}],CustomPotionColor:4109449}}}
execute if entity @s[advancements={festin_estival:deblocage/get_27=true}] positioned ~2 ~-1 ~ run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:potion",tag:{Tags:["fe23_get_27"]}}}] Item.Count set from storage minecraft:fe23_craft_count get_27

execute if entity @s[advancements={festin_estival:deblocage/get_27=true}] run advancement grant @s only festin_estival:craft/get_27
execute if entity @s[advancements={festin_estival:deblocage/get_27=true}] run advancement grant @s only peaceandcube:events/festin_estival get_27

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count get_27 10
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset fut_sucre fe23_craft_count
scoreboard players reset fut_menthe fe23_craft_count
scoreboard players reset fut_fiole fe23_craft_count
data remove storage fe23_craft_count get_27