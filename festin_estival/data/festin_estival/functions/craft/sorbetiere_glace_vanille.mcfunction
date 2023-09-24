execute if entity @s[advancements={festin_estival:deblocage/glace_vanille=true}] store result score sor_van_vanille fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/glace_vanille=true}] store result score sor_van_lait fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/glace_vanille=true}] store result score sor_van_glace fe23_craft_count run data get block ~ ~ ~ Items[2].Count
execute if entity @s[advancements={festin_estival:deblocage/glace_vanille=true}] unless score sor_van_vanille fe23_craft_count = sor_van_lait fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/glace_vanille=true}] unless score sor_van_vanille fe23_craft_count = sor_van_glace fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/glace_vanille=true}] store result storage fe23_craft_count glace_vanille int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/glace_vanille=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/glace_vanille=true}] positioned ~ ~0.6 ~ run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:golden_apple",Count:1b,tag:{display:{Name:'{"text":"Glace à la vanille","color":"#F3E5AB","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Un dessert froid et gourmand fait","color":"gray","italic":false}','{"text":"à partir de lait et de vanille,","color":"gray","italic":false}','{"text":"probablement inventé dans l\'empire","color":"gray","italic":false}','{"text":"perse pendant l\'Antiquité.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7235,Tags:["fe23_glace_vanille"]}}}
execute if entity @s[advancements={festin_estival:deblocage/glace_vanille=true}] positioned ~ ~0.6 ~ run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:golden_apple",tag:{Tags:["fe23_glace_vanille"]}}}] Item.Count set from storage minecraft:fe23_craft_count glace_vanille

execute if entity @s[advancements={festin_estival:deblocage/glace_vanille=true}] run advancement grant @s only festin_estival:craft/glace_vanille
execute if entity @s[advancements={festin_estival:deblocage/glace_vanille=true}] run advancement grant @s only peaceandcube:events/festin_estival glace_vanille

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count glace_vanille 15
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset sor_van_vanille fe23_craft_count
scoreboard players reset sor_van_lait fe23_craft_count
scoreboard players reset sor_van_glace fe23_craft_count
data remove storage fe23_craft_count glace_vanille