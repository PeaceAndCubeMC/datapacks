execute if entity @s[advancements={festin_estival:deblocage/cidre=true}] store result score fut_pomme fe23_craft_count run data get block ~ ~ ~ Items[0].Count
execute if entity @s[advancements={festin_estival:deblocage/cidre=true}] store result score fut_fiole fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/cidre=true}] unless score fut_pomme fe23_craft_count = fut_fiole fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/cidre=true}] store result storage fe23_craft_count cidre int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/cidre=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/cidre=true}] positioned ~2 ~-1 ~ run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Cidre","color":"#da995f","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une boisson légèrement alcoolisée","color":"gray","italic":false}','{"text":"emblématique de la Bretagne,","color":"gray","italic":false}','{"text":"faite à partir de pommes.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},HideFlags:32,CustomModelData:7239,Tags:["fe23_cidre"],CustomPotionEffects:[{Id:2,Amplifier:0b,Duration:200,ShowParticles:0b},{Id:8,Amplifier:1b,Duration:150,ShowParticles:0b},{Id:23,Amplifier:2b,Duration:20,ShowParticles:0b}],CustomPotionColor:14326111}}}
execute if entity @s[advancements={festin_estival:deblocage/cidre=true}] positioned ~2 ~-1 ~ run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:potion",tag:{Tags:["fe23_cidre"]}}}] Item.Count set from storage minecraft:fe23_craft_count cidre

execute if entity @s[advancements={festin_estival:deblocage/cidre=true}] run advancement grant @s only festin_estival:craft/cidre
execute if entity @s[advancements={festin_estival:deblocage/cidre=true}] run advancement grant @s only peaceandcube:events/festin_estival cidre

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count cidre 10
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset fut_pomme fe23_craft_count
scoreboard players reset fut_fiole fe23_craft_count
data remove storage fe23_craft_count cidre