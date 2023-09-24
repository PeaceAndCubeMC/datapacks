execute if entity @s[advancements={festin_estival:deblocage/glace_menthe_chocolat=true}] store result score sor_mc_menthe fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/glace_menthe_chocolat=true}] store result score sor_mc_choc fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/glace_menthe_chocolat=true}] store result score sor_mc_lait fe23_craft_count run data get block ~ ~ ~ Items[2].Count
execute if entity @s[advancements={festin_estival:deblocage/glace_menthe_chocolat=true}] store result score sor_mc_glace fe23_craft_count run data get block ~ ~ ~ Items[3].Count
execute if entity @s[advancements={festin_estival:deblocage/glace_menthe_chocolat=true}] unless score sor_mc_menthe fe23_craft_count = sor_mc_choc fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/glace_menthe_chocolat=true}] unless score sor_mc_menthe fe23_craft_count = sor_mc_lait fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/glace_menthe_chocolat=true}] unless score sor_mc_menthe fe23_craft_count = sor_mc_glace fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/glace_menthe_chocolat=true}] store result storage fe23_craft_count glace_menthe_chocolat int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/glace_menthe_chocolat=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/glace_menthe_chocolat=true}] positioned ~ ~0.6 ~ run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:golden_apple",Count:1b,tag:{display:{Name:'{"text":"Glace menthe-chocolat","color":"#3EB489","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Un dessert froid et gourmand fait","color":"gray","italic":false}','{"text":"à partir de lait, de menthe et de","color":"gray","italic":false}','{"text":"chocolat probablement inventé dans","color":"gray","italic":false}','{"text":"l\'empire perse pendant l\'Antiquité.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7236,Tags:["fe23_glace_menthe_chocolat"]}}}
execute if entity @s[advancements={festin_estival:deblocage/glace_menthe_chocolat=true}] positioned ~ ~0.6 ~ run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:golden_apple",tag:{Tags:["fe23_glace_menthe_chocolat"]}}}] Item.Count set from storage minecraft:fe23_craft_count glace_menthe_chocolat

execute if entity @s[advancements={festin_estival:deblocage/glace_menthe_chocolat=true}] run advancement grant @s only festin_estival:craft/glace_menthe_chocolat
execute if entity @s[advancements={festin_estival:deblocage/glace_menthe_chocolat=true}] run advancement grant @s only peaceandcube:events/festin_estival glace_menthe_chocolat

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count glace_menthe_chocolat 15
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset sor_mc_menthe fe23_craft_count
scoreboard players reset sor_mc_choc fe23_craft_count
scoreboard players reset sor_mc_lait fe23_craft_count
scoreboard players reset sor_mc_glace fe23_craft_count
data remove storage fe23_craft_count glace_menthe_chocolat