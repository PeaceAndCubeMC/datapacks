execute store result score extract_raisin fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute store result score extract_raisin_fiole fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute unless score extract_raisin fe23_craft_count = extract_raisin_fiole fe23_craft_count run return -1

execute store result storage fe23_craft_count jus_raisin int 1 run data get block ~ ~ ~ Items[0].Count

execute run data remove block ~ ~ ~ Items
execute positioned ~0.2 ~1.5 ~-1 run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Jus de raisin","color":"#6F2DA8","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une boisson fruitée et vitaminée,","color":"gray","italic":false}','{"text":"faite à partir de raisins.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},HideFlags:32,CustomModelData:7236,Tags:["fe23_jus_raisin"],CustomPotionEffects:[{Id:5,Amplifier:1b,Duration:200,ShowParticles:0b},{Id:23,Amplifier:3b,Duration:20,ShowParticles:0b}],CustomPotionColor:7286184}}}
execute positioned ~0.2 ~1.5 ~-1 run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:potion",tag:{Tags:["fe23_jus_raisin"]}}}] Item.Count set from storage minecraft:fe23_craft_count jus_raisin

execute if entity @s[advancements={festin_estival:deblocage/jus_raisin=true}] run advancement grant @s only festin_estival:craft/jus_raisin
execute if entity @s[advancements={festin_estival:deblocage/jus_raisin=true}] run advancement grant @s only peaceandcube:events/festin_estival jus_raisin

execute if entity @s[advancements={festin_estival:deblocage/jus_raisin=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Mais... C'est pas du vin rouge, c'est du jus de raisin !","italic":true}]
execute if entity @s[advancements={festin_estival:deblocage/jus_raisin=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Je vais aller me renseigner auprès de Thomas Serret, à côté des fûts...","italic":true}]
execute if entity @s[advancements={festin_estival:deblocage/jus_raisin=false}] run advancement revoke @s only festin_estival:deblocage/vin_rouge
execute if entity @s[advancements={festin_estival:deblocage/jus_raisin=false}] run advancement grant @s only festin_estival:deblocage/jus_raisin

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count jus_raisin 10
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset extract_raisin fe23_craft_count
scoreboard players reset extract_raisin_fiole fe23_craft_count
data remove storage fe23_craft_count jus_raisin