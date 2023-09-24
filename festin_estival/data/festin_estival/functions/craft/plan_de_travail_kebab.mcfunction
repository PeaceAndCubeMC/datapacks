execute if entity @s[advancements={festin_estival:deblocage/kebab=true}] store result score pdt_kb_salade fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/kebab=true}] store result score pdt_kb_tomate fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/kebab=true}] store result score pdt_kb_oignon fe23_craft_count run data get block ~ ~ ~ Items[2].Count
execute if entity @s[advancements={festin_estival:deblocage/kebab=true}] store result score pdt_kb_mouton fe23_craft_count run data get block ~ ~ ~ Items[3].Count
execute if entity @s[advancements={festin_estival:deblocage/kebab=true}] store result score pdt_kb_pain fe23_craft_count run data get block ~ ~ ~ Items[4].Count
execute if entity @s[advancements={festin_estival:deblocage/kebab=true}] unless score pdt_kb_salade fe23_craft_count = pdt_kb_tomate fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/kebab=true}] unless score pdt_kb_salade fe23_craft_count = pdt_kb_oignon fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/kebab=true}] unless score pdt_kb_salade fe23_craft_count = pdt_kb_mouton fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/kebab=true}] unless score pdt_kb_salade fe23_craft_count = pdt_kb_pain fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/kebab=true}] store result storage fe23_craft_count kebab int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/kebab=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/kebab=true}] run data modify block ~ ~ ~ Items append value {Slot:4b,id:"minecraft:cooked_beef",Count:1b,tag:{display:{Name:'{"text":"Kebab","color":"#cd9358","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Un sandwich originaire de l\'empire","color":"gray","italic":false}','{"text":"ottoman et popularisé en Allemagne,","color":"gray","italic":false}','{"text":"composé de viande grillée à la","color":"gray","italic":false}','{"text":"broche et de crudités.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7233,Tags:["fe23_kebab"]}}
execute if entity @s[advancements={festin_estival:deblocage/kebab=true}] run data modify block ~ ~ ~ Items[0].Count set from storage minecraft:fe23_craft_count kebab

execute if entity @s[advancements={festin_estival:deblocage/kebab=true}] run advancement grant @s only festin_estival:craft/kebab
execute if entity @s[advancements={festin_estival:deblocage/kebab=true}] run advancement grant @s only peaceandcube:events/festin_estival kebab

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count kebab 30
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset pdt_kb_salade fe23_craft_count
scoreboard players reset pdt_kb_tomate fe23_craft_count
scoreboard players reset pdt_kb_oignon fe23_craft_count
scoreboard players reset pdt_kb_mouton fe23_craft_count
scoreboard players reset pdt_kb_pain fe23_craft_count
data remove storage fe23_craft_count kebab