execute at @e[type=chicken,limit=1,tag=fe23_poule] run kill @e[type=item,distance=..100,tag=fe23_omelette_oeuf]
execute at @e[type=chicken,limit=1,tag=fe23_poule] run summon minecraft:item ~ ~ ~-1 {Tags:["fe23_omelette_omelette"],PickupDelay:32767,Item:{id:"minecraft:pumpkin_pie",Count:1b,tag:{CustomModelData:7233}}}
schedule function festin_estival:quetes/quete_omelette_give_omelette 2s