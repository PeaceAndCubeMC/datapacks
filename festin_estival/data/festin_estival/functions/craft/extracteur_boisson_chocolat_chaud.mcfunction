execute if entity @s[advancements={festin_estival:deblocage/chocolat_chaud=true}] store result score extract_choc_sucre fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/chocolat_chaud=true}] store result score extract_choc_cacao fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/chocolat_chaud=true}] store result score extract_choc_lait fe23_craft_count run data get block ~ ~ ~ Items[2].Count
execute if entity @s[advancements={festin_estival:deblocage/chocolat_chaud=true}] unless score extract_choc_sucre fe23_craft_count = extract_choc_cacao fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/chocolat_chaud=true}] unless score extract_choc_sucre fe23_craft_count = extract_choc_lait fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/chocolat_chaud=true}] store result storage fe23_craft_count chocolat_chaud int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/chocolat_chaud=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/chocolat_chaud=true}] positioned ~0.2 ~1.5 ~-1 run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Chocolat chaud","color":"#8A6258","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une boisson chaude indispensable","color":"gray","italic":false}','{"text":"pour passer l\'hiver.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},HideFlags:32,CustomModelData:7233,Tags:["fe23_chocolat_chaud"],CustomPotionEffects:[{Id:11,Amplifier:1b,Duration:300,ShowParticles:0b},{Id:23,Amplifier:5b,Duration:20,ShowParticles:0b}],CustomPotionColor:9069144}}}
execute if entity @s[advancements={festin_estival:deblocage/chocolat_chaud=true}] positioned ~0.2 ~1.5 ~-1 run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:potion",tag:{Tags:["fe23_chocolat_chaud"]}}}] Item.Count set from storage minecraft:fe23_craft_count chocolat_chaud

execute if entity @s[advancements={festin_estival:deblocage/chocolat_chaud=true}] run advancement grant @s only festin_estival:craft/chocolat_chaud
execute if entity @s[advancements={festin_estival:deblocage/chocolat_chaud=true}] run advancement grant @s only peaceandcube:events/festin_estival chocolat_chaud

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count chocolat_chaud 15
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset extract_choc_sucre fe23_craft_count
scoreboard players reset extract_choc_cacao fe23_craft_count
scoreboard players reset extract_choc_lait fe23_craft_count
data remove storage fe23_craft_count chocolat_chaud