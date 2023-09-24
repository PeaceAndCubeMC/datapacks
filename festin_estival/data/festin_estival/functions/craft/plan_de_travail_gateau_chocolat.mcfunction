execute if entity @s[advancements={festin_estival:deblocage/gateau_chocolat=true}] store result score pdt_gateau_c_oeuf fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/gateau_chocolat=true}] store result score pdt_gateau_c_sucre fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/gateau_chocolat=true}] store result score pdt_gateau_c_choc fe23_craft_count run data get block ~ ~ ~ Items[2].Count
execute if entity @s[advancements={festin_estival:deblocage/gateau_chocolat=true}] store result score pdt_gateau_c_farine fe23_craft_count run data get block ~ ~ ~ Items[3].Count
execute if entity @s[advancements={festin_estival:deblocage/gateau_chocolat=true}] unless score pdt_gateau_c_oeuf fe23_craft_count = pdt_gateau_c_sucre fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/gateau_chocolat=true}] unless score pdt_gateau_c_oeuf fe23_craft_count = pdt_gateau_c_choc fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/gateau_chocolat=true}] unless score pdt_gateau_c_oeuf fe23_craft_count = pdt_gateau_c_farine fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/gateau_chocolat=true}] store result storage fe23_craft_count gateau_chocolat int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/gateau_chocolat=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/gateau_chocolat=true}] run data modify block ~ ~ ~ Items append value {Slot:4b,id:"minecraft:pumpkin_pie",Count:1b,tag:{display:{Name:'{"text":"Gâteau au chocolat","color":"#634f40","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une pâtisserie gourmande, composée","color":"gray","italic":false}','{"text":"essentiellement de chocolat.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7231,Tags:["fe23_gateau_chocolat"]}}
execute if entity @s[advancements={festin_estival:deblocage/gateau_chocolat=true}] run data modify block ~ ~ ~ Items[0].Count set from storage minecraft:fe23_craft_count gateau_chocolat

execute if entity @s[advancements={festin_estival:deblocage/gateau_chocolat=true}] run advancement grant @s only festin_estival:craft/gateau_chocolat
execute if entity @s[advancements={festin_estival:deblocage/gateau_chocolat=true}] run advancement grant @s only peaceandcube:events/festin_estival gateau_chocolat

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count gateau_chocolat 30
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset pdt_gateau_c_oeuf fe23_craft_count
scoreboard players reset pdt_gateau_c_sucre fe23_craft_count
scoreboard players reset pdt_gateau_c_choc fe23_craft_count
scoreboard players reset pdt_gateau_c_farine fe23_craft_count
data remove storage fe23_craft_count gateau_chocolat