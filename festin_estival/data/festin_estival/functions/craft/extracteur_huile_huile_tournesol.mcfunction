execute if entity @s[advancements={festin_estival:deblocage/huile_tournesol=true}] store result score extract_tournesol fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/huile_tournesol=true}] store result score extract_fiole_vide fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/huile_tournesol=true}] unless score extract_tournesol fe23_craft_count = extract_fiole_vide fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/huile_tournesol=true}] store result storage fe23_craft_count huile_tournesol int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/huile_tournesol=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/huile_tournesol=true}] positioned ~ ~-1 ~3 run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Huile de tournesol","color":"#F6A90F","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une huile végétale utilisée dans","color":"gray","italic":false}','{"text":"l\'alimentation, notamment pour","color":"gray","italic":false}','{"text":"la friture.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},HideFlags:32,CustomModelData:7230,Tags:["fe23_huile_tournesol"],CustomPotionEffects:[{Id:9,Amplifier:1b,Duration:200,ShowParticles:0b}],CustomPotionColor:16165135}}}
execute if entity @s[advancements={festin_estival:deblocage/huile_tournesol=true}] positioned ~ ~-1 ~3 run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:potion",tag:{Tags:["fe23_huile_tournesol"]}}}] Item.Count set from storage minecraft:fe23_craft_count huile_tournesol

execute if entity @s[advancements={festin_estival:deblocage/huile_tournesol=true}] run advancement grant @s only festin_estival:craft/huile_tournesol
execute if entity @s[advancements={festin_estival:deblocage/huile_tournesol=true}] run advancement grant @s only peaceandcube:events/festin_estival huile_tournesol

scoreboard players reset extract_tournesol fe23_craft_count
scoreboard players reset extract_fiole_vide fe23_craft_count
data remove storage fe23_craft_count huile_tournesol