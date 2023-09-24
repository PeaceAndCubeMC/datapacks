execute if entity @s[advancements={festin_estival:deblocage/pain_raisins=true}] store result score pdt_pr_raisin fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/pain_raisins=true}] store result score pdt_pr_oeuf fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/pain_raisins=true}] store result score pdt_pr_beurre fe23_craft_count run data get block ~ ~ ~ Items[2].Count
execute if entity @s[advancements={festin_estival:deblocage/pain_raisins=true}] store result score pdt_pr_sucre fe23_craft_count run data get block ~ ~ ~ Items[3].Count
execute if entity @s[advancements={festin_estival:deblocage/pain_raisins=true}] store result score pdt_pr_farine fe23_craft_count run data get block ~ ~ ~ Items[4].Count
execute if entity @s[advancements={festin_estival:deblocage/pain_raisins=true}] unless score pdt_pr_raisin fe23_craft_count = pdt_pr_oeuf fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/pain_raisins=true}] unless score pdt_pr_raisin fe23_craft_count = pdt_pr_beurre fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/pain_raisins=true}] unless score pdt_pr_raisin fe23_craft_count = pdt_pr_sucre fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/pain_raisins=true}] unless score pdt_pr_raisin fe23_craft_count = pdt_pr_farine fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/pain_raisins=true}] store result storage fe23_craft_count pain_raisins int 2 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/pain_raisins=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/pain_raisins=true}] run data modify block ~ ~ ~ Items append value {Slot:4b,id:"minecraft:bread",Count:1b,tag:{display:{Name:'{"text":"Pain aux raisins","color":"#C2A985","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une viennoiserie française en","color":"gray","italic":false}','{"text":"forme de spirale et composée","color":"gray","italic":false}','{"text":"de raisins secs.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_pain_raisins"]}}
execute if entity @s[advancements={festin_estival:deblocage/pain_raisins=true}] run data modify block ~ ~ ~ Items[0].Count set from storage minecraft:fe23_craft_count pain_raisins

execute if entity @s[advancements={festin_estival:deblocage/pain_raisins=true}] run advancement grant @s only festin_estival:craft/pain_raisins
execute if entity @s[advancements={festin_estival:deblocage/pain_raisins=true}] run advancement grant @s only peaceandcube:events/festin_estival pain_raisins

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count pain_raisins 25
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset pdt_pr_raisin fe23_craft_count
scoreboard players reset pdt_pr_oeuf fe23_craft_count
scoreboard players reset pdt_pr_beurre fe23_craft_count
scoreboard players reset pdt_pr_sucre fe23_craft_count
scoreboard players reset pdt_pr_farine fe23_craft_count
data remove storage fe23_craft_count pain_raisins