execute if entity @s[advancements={festin_estival:deblocage/beurre=true}] store result storage fe23_craft_count beurre int 1 run data get block ~ ~ ~ Items[0].Count

execute if entity @s[advancements={festin_estival:deblocage/beurre=true}] run data remove block ~ ~ ~ Items
execute if entity @s[advancements={festin_estival:deblocage/beurre=true}] run data modify block ~ ~ ~ Items append value {Slot:4b,id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'{"text":"Beurre","color":"#f6e2b9","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Un produit laitier gras, pouvant","color":"gray","italic":false}','{"text":"être tartiné ou utilisé dans de","color":"gray","italic":false}','{"text":"nombreuses préparations.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_beurre"]}}
execute if entity @s[advancements={festin_estival:deblocage/beurre=true}] run data modify block ~ ~ ~ Items[0].Count set from storage minecraft:fe23_craft_count beurre

execute if entity @s[advancements={festin_estival:deblocage/beurre=true}] run advancement grant @s only festin_estival:craft/beurre
execute if entity @s[advancements={festin_estival:deblocage/beurre=true}] run advancement grant @s only peaceandcube:events/festin_estival beurre

data remove storage fe23_craft_count beurre