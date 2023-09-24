execute if entity @s[advancements={festin_estival:deblocage/fromage=true}] store result score maf_lait fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:potion",tag:{Tags:["fe23_bouteille_lait"]}}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/fromage=true}] store result score maf_champi fe23_craft_count run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:brown_mushroom"}},limit=1] Item.Count
execute if entity @s[advancements={festin_estival:deblocage/fromage=true}] unless score maf_lait fe23_craft_count = maf_champi fe23_craft_count run return -1

execute if entity @s[advancements={festin_estival:deblocage/fromage=true}] store result storage fe23_craft_count fromage int 1 run data get entity @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:potion",tag:{Tags:["fe23_bouteille_lait"]}}},limit=1] Item.Count

execute if entity @s[advancements={festin_estival:deblocage/fromage=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:potion",tag:{Tags:["fe23_bouteille_lait"]}}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/fromage=true}] run kill @e[type=item,distance=..0.5,sort=nearest,nbt={Item:{id:"minecraft:brown_mushroom"}},limit=1]
execute if entity @s[advancements={festin_estival:deblocage/fromage=true}] positioned ~ ~0.35 ~ run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:baked_potato",Count:1b,tag:{display:{Name:'{"text":"Fromage","color":"#ffa600","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Un aliment gourmand fait à partir","color":"gray","italic":false}','{"text":"de lait, qui se décline sous des","color":"gray","italic":false}','{"text":"centaines de formes à travers le","color":"gray","italic":false}','{"text":"monde.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7231,Tags:["fe23_fromage"]}}}
execute if entity @s[advancements={festin_estival:deblocage/fromage=true}] positioned ~ ~0.35 ~ run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:baked_potato",tag:{Tags:["fe23_fromage"]}}}] Item.Count set from storage minecraft:fe23_craft_count fromage

execute if entity @s[advancements={festin_estival:deblocage/fromage=true}] run advancement grant @s only festin_estival:craft/fromage
execute if entity @s[advancements={festin_estival:deblocage/fromage=true}] run advancement grant @s only peaceandcube:events/festin_estival fromage

execute store result score @s fe23_paliers_temp run data get storage fe23_craft_count fromage 5
scoreboard players operation @s fe23_paliers += @s fe23_paliers_temp
scoreboard players operation total fe23_paliers += @s fe23_paliers_temp

scoreboard players reset maf_lait fe23_craft_count
scoreboard players reset maf_champi fe23_craft_count
data remove storage fe23_craft_count fromage