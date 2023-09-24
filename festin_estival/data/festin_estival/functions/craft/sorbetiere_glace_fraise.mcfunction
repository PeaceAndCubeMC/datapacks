execute if entity @s[advancements={festin_estival:deblocage/glace_fraise=true}] store result score sor_fra_fraise fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/glace_fraise=true}] store result score sor_fra_lait fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/glace_fraise=true}] store result score sor_fra_glace fe23_craft_count run data get block ~ ~ ~ Items[2].Count
execute if entity @s[advancements={festin_estival:deblocage/glace_fraise=true}] unless score sor_fra_fraise fe23_craft_count = sor_fra_lait fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/glace_fraise=true}] unless score sor_fra_fraise fe23_craft_count = sor_fra_glace fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/glace_fraise=true}] store result storage fe23_craft_count glace_fraise int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/glace_fraise=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/glace_fraise=true}] positioned ~ ~0.6 ~ run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:golden_apple",Count:1b,tag:{display:{Name:'{"text":"Glace à la fraise","color":"#C83F49","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Un dessert froid et gourmand fait","color":"gray","italic":false}','{"text":"à partir de lait et de fraise,","color":"gray","italic":false}','{"text":"probablement inventé dans l\'empire","color":"gray","italic":false}','{"text":"perse pendant l\'Antiquité.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7233,Tags:["fe23_glace_fraise"]}}}
execute if entity @s[advancements={festin_estival:deblocage/glace_fraise=true}] positioned ~ ~0.6 ~ run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:golden_apple",tag:{Tags:["fe23_glace_fraise"]}}}] Item.Count set from storage minecraft:fe23_craft_count glace_fraise

execute if entity @s[advancements={festin_estival:deblocage/glace_fraise=true}] run advancement grant @s only festin_estival:craft/glace_fraise
execute if entity @s[advancements={festin_estival:deblocage/glace_fraise=true}] run advancement grant @s only peaceandcube:events/festin_estival glace_fraise

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count glace_fraise 15
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset sor_fra_fraise fe23_craft_count
scoreboard players reset sor_fra_lait fe23_craft_count
scoreboard players reset sor_fra_glace fe23_craft_count
data remove storage fe23_craft_count glace_fraise