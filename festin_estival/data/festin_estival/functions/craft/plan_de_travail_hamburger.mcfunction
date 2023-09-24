execute if entity @s[advancements={festin_estival:deblocage/hamburger=true}] store result score pdt_hb_fromage fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/hamburger=true}] store result score pdt_hb_salade fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/hamburger=true}] store result score pdt_hb_tomate fe23_craft_count run data get block ~ ~ ~ Items[2].Count
execute if entity @s[advancements={festin_estival:deblocage/hamburger=true}] store result score pdt_hb_steak fe23_craft_count run data get block ~ ~ ~ Items[3].Count
execute if entity @s[advancements={festin_estival:deblocage/hamburger=true}] store result score pdt_hb_pain fe23_craft_count run data get block ~ ~ ~ Items[4].Count
execute if entity @s[advancements={festin_estival:deblocage/hamburger=true}] unless score pdt_hb_fromage fe23_craft_count = pdt_hb_salade fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/hamburger=true}] unless score pdt_hb_fromage fe23_craft_count = pdt_hb_tomate fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/hamburger=true}] unless score pdt_hb_fromage fe23_craft_count = pdt_hb_steak fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/hamburger=true}] unless score pdt_hb_fromage fe23_craft_count = pdt_hb_pain fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/hamburger=true}] store result storage fe23_craft_count hamburger int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/hamburger=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/hamburger=true}] run data modify block ~ ~ ~ Items append value {Slot:4b,id:"minecraft:cooked_beef",Count:1b,tag:{display:{Name:'{"text":"Hamburger","color":"#c6902c","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Un sandwich traditionnellement","color":"gray","italic":false}','{"text":"garni d\'un steak, de crudités et","color":"gray","italic":false}','{"text":"de sauce, originaire de la ville","color":"gray","italic":false}','{"text":"de Hambourg en Allemagne.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7231,Tags:["fe23_hamburger"]}}
execute if entity @s[advancements={festin_estival:deblocage/hamburger=true}] run data modify block ~ ~ ~ Items[0].Count set from storage minecraft:fe23_craft_count hamburger

execute if entity @s[advancements={festin_estival:deblocage/hamburger=true}] run advancement grant @s only festin_estival:craft/hamburger
execute if entity @s[advancements={festin_estival:deblocage/hamburger=true}] run advancement grant @s only peaceandcube:events/festin_estival hamburger

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count hamburger 30
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset pdt_hb_fromage fe23_craft_count
scoreboard players reset pdt_hb_salade fe23_craft_count
scoreboard players reset pdt_hb_tomate fe23_craft_count
scoreboard players reset pdt_hb_steak fe23_craft_count
scoreboard players reset pdt_hb_pain fe23_craft_count
data remove storage fe23_craft_count hamburger