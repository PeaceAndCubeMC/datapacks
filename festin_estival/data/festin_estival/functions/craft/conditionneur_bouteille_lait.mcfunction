execute if entity @s[advancements={festin_estival:deblocage/bouteille_lait=true}] store result score cond_lait fe23_craft_count run data get block ~ ~ ~ Items[1].Count
execute if entity @s[advancements={festin_estival:deblocage/bouteille_lait=true}] unless score cond_lait fe23_craft_count matches ..16 run return -1

execute if entity @s[advancements={festin_estival:deblocage/bouteille_lait=true}] store result storage fe23_craft_count bouteille_lait int 1 run data get block ~ ~ ~ Items[1].Count

execute if entity @s[advancements={festin_estival:deblocage/bouteille_lait=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/bouteille_lait=true}] run data modify block ~ ~ ~ Items append value {Slot:4b,id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Bouteille de lait","color":"#fdfff5","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Comme un seau de lait, mais","color":"gray","italic":false}','{"text":"en bouteille.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},HideFlags:32,CustomModelData:7235,Tags:["fe23_bouteille_lait"],CustomPotionEffects:[{Id:23,Amplifier:2b,Duration:20,ShowParticles:0b}],CustomPotionColor:16646133}}
execute if entity @s[advancements={festin_estival:deblocage/bouteille_lait=true}] run data modify block ~ ~ ~ Items[0].Count set from storage minecraft:fe23_craft_count bouteille_lait
execute if entity @s[advancements={festin_estival:deblocage/bouteille_lait=true}] run data modify block ~ ~ ~ Items append value {Slot:7b,id:"minecraft:bucket",Count:1b}

execute if entity @s[advancements={festin_estival:deblocage/bouteille_lait=true}] run advancement grant @s only festin_estival:craft/bouteille_lait
execute if entity @s[advancements={festin_estival:deblocage/bouteille_lait=true}] run advancement grant @s only peaceandcube:events/festin_estival bouteille_lait

scoreboard players reset cond_lait fe23_craft_count
data remove storage fe23_craft_count bouteille_lait