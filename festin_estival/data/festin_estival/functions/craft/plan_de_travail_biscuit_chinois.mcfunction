execute if entity @s[advancements={festin_estival:deblocage/biscuit_chinois=true}] store result score pdt_bc_papier fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/biscuit_chinois=true}] store result score pdt_bc_oeuf fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/biscuit_chinois=true}] store result score pdt_bc_beurre fe23_craft_count run data get block ~ ~ ~ Items[2].Count
execute if entity @s[advancements={festin_estival:deblocage/biscuit_chinois=true}] store result score pdt_bc_sucre fe23_craft_count run data get block ~ ~ ~ Items[3].Count
execute if entity @s[advancements={festin_estival:deblocage/biscuit_chinois=true}] store result score pdt_bc_farine fe23_craft_count run data get block ~ ~ ~ Items[4].Count
execute if entity @s[advancements={festin_estival:deblocage/biscuit_chinois=true}] unless score pdt_bc_papier fe23_craft_count = pdt_bc_oeuf fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/biscuit_chinois=true}] unless score pdt_bc_papier fe23_craft_count = pdt_bc_beurre fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/biscuit_chinois=true}] unless score pdt_bc_papier fe23_craft_count = pdt_bc_sucre fe23_craft_count run return -1
execute if entity @s[advancements={festin_estival:deblocage/biscuit_chinois=true}] unless score pdt_bc_papier fe23_craft_count = pdt_bc_farine fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/biscuit_chinois=true}] store result storage fe23_craft_count biscuit_chinois int 2 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/biscuit_chinois=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/biscuit_chinois=true}] run loot replace block ~ ~ ~ container.4 loot festin_estival:biscuit_chinois
execute if entity @s[advancements={festin_estival:deblocage/biscuit_chinois=true}] run data modify block ~ ~ ~ Items[0].Count set from storage minecraft:fe23_craft_count biscuit_chinois

execute if entity @s[advancements={festin_estival:deblocage/biscuit_chinois=true}] run advancement grant @s only festin_estival:craft/biscuit_chinois
execute if entity @s[advancements={festin_estival:deblocage/biscuit_chinois=true}] run advancement grant @s only peaceandcube:events/festin_estival biscuit_chinois

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count biscuit_chinois 25
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset pdt_bc_papier fe23_craft_count
scoreboard players reset pdt_bc_oeuf fe23_craft_count
scoreboard players reset pdt_bc_beurre fe23_craft_count
scoreboard players reset pdt_bc_sucre fe23_craft_count
scoreboard players reset pdt_bc_farine fe23_craft_count
data remove storage fe23_craft_count biscuit_chinois