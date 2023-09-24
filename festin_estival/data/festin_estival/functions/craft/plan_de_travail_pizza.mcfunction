execute if entity @s[advancements={festin_estival:deblocage/pizza=true}] store result score pdt_pz_tomate fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/pizza=true}] store result score pdt_pz_jambon fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/pizza=true}] store result score pdt_pz_fromage fe23_craft_count run data get block ~ ~ ~ Items[2].Count
execute if entity @s[advancements={festin_estival:deblocage/pizza=true}] store result score pdt_pz_farine fe23_craft_count run data get block ~ ~ ~ Items[3].Count
execute if entity @s[advancements={festin_estival:deblocage/pizza=true}] unless score pdt_pz_tomate fe23_craft_count = pdt_pz_jambon fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/pizza=true}] unless score pdt_pz_tomate fe23_craft_count = pdt_pz_fromage fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/pizza=true}] unless score pdt_pz_tomate fe23_craft_count = pdt_pz_farine fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/pizza=true}] store result storage fe23_craft_count pizza int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/pizza=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/pizza=true}] run data modify block ~ ~ ~ Items append value {Slot:4b,id:"minecraft:cooked_beef",Count:1b,tag:{display:{Name:'{"text":"Pizza","color":"#B21807","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Plat traditionnel de la cuisine","color":"gray","italic":false}','{"text":"italienne, garnie à souhait sur","color":"gray","italic":false}','{"text":"sur une base de sauce tomate.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7232,Tags:["fe23_pizza"]}}
execute if entity @s[advancements={festin_estival:deblocage/pizza=true}] run data modify block ~ ~ ~ Items[0].Count set from storage minecraft:fe23_craft_count pizza

execute if entity @s[advancements={festin_estival:deblocage/pizza=true}] run advancement grant @s only festin_estival:craft/pizza
execute if entity @s[advancements={festin_estival:deblocage/pizza=true}] run advancement grant @s only peaceandcube:events/festin_estival pizza

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count pizza 30
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset pdt_pz_tomate fe23_craft_count
scoreboard players reset pdt_pz_jambon fe23_craft_count
scoreboard players reset pdt_pz_fromage fe23_craft_count
scoreboard players reset pdt_pz_farine fe23_craft_count
data remove storage fe23_craft_count pizza