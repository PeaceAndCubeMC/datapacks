execute if entity @s[advancements={festin_estival:deblocage/jambon_beurre=true}] store result score pdt_jb_jambon fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/jambon_beurre=true}] store result score pdt_jb_beurre fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/jambon_beurre=true}] store result score pdt_jb_pain fe23_craft_count run data get block ~ ~ ~ Items[2].Count
execute if entity @s[advancements={festin_estival:deblocage/jambon_beurre=true}] unless score pdt_jb_jambon fe23_craft_count = pdt_jb_beurre fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/jambon_beurre=true}] unless score pdt_jb_jambon fe23_craft_count = pdt_jb_pain fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/jambon_beurre=true}] store result storage fe23_craft_count jambon_beurre int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/jambon_beurre=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/jambon_beurre=true}] run data modify block ~ ~ ~ Items append value {Slot:4b,id:"minecraft:cooked_porkchop",Count:1b,tag:{display:{Name:'{"text":"Jambon-beurre","color":"#c68958","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Aussi appelé « parisien », ce sandwich","color":"gray","italic":false}','{"text":"français est composé de pain, de","color":"gray","italic":false}','{"text":"beurre et de jambon.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_jambon_beurre"]}}
execute if entity @s[advancements={festin_estival:deblocage/jambon_beurre=true}] run data modify block ~ ~ ~ Items[0].Count set from storage minecraft:fe23_craft_count jambon_beurre

execute if entity @s[advancements={festin_estival:deblocage/jambon_beurre=true}] run advancement grant @s only festin_estival:craft/jambon_beurre
execute if entity @s[advancements={festin_estival:deblocage/jambon_beurre=true}] run advancement grant @s only peaceandcube:events/festin_estival jambon_beurre

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count jambon_beurre 20
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset pdt_jb_jambon fe23_craft_count
scoreboard players reset pdt_jb_beurre fe23_craft_count
scoreboard players reset pdt_jb_pain fe23_craft_count
data remove storage fe23_craft_count jambon_beurre