execute if entity @s[advancements={festin_estival:deblocage/jus_pomme=true}] store result score extract_pomme fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/jus_pomme=true}] store result score extract_pomme_fiole fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/jus_pomme=true}] unless score extract_pomme fe23_craft_count = extract_pomme_fiole fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/jus_pomme=true}] store result storage fe23_craft_count jus_pomme int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/jus_pomme=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/jus_pomme=true}] positioned ~0.2 ~1.5 ~-1 run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Jus de pomme","color":"#f7ae66","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une boisson fruitée et vitaminée,","color":"gray","italic":false}','{"text":"faite à partir de pommes.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},HideFlags:32,CustomModelData:7231,Tags:["fe23_jus_pomme"],CustomPotionEffects:[{Id:5,Amplifier:1b,Duration:200,ShowParticles:0b},{Id:23,Amplifier:3b,Duration:20,ShowParticles:0b}],CustomPotionColor:16232038}}}
execute if entity @s[advancements={festin_estival:deblocage/jus_pomme=true}] positioned ~0.2 ~1.5 ~-1 run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:potion",tag:{Tags:["fe23_jus_pomme"]}}}] Item.Count set from storage minecraft:fe23_craft_count jus_pomme

execute if entity @s[advancements={festin_estival:deblocage/jus_pomme=true}] run advancement grant @s only festin_estival:craft/jus_pomme
execute if entity @s[advancements={festin_estival:deblocage/jus_pomme=true}] run advancement grant @s only peaceandcube:events/festin_estival jus_pomme

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count jus_pomme 10
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset extract_pomme fe23_craft_count
scoreboard players reset extract_pomme_fiole fe23_craft_count
data remove storage fe23_craft_count jus_pomme