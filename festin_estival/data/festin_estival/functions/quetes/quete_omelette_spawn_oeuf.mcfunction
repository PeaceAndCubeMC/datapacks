tag @s add fe23_schedule
execute at @e[type=chicken,limit=1,tag=fe23_poule] run summon minecraft:item ~ ~ ~-1 {Tags:["fe23_omelette_oeuf"],PickupDelay:32767,Item:{id:"minecraft:egg",Count:1b}}
schedule function festin_estival:quetes/quete_omelette_spawn_omelette 2s