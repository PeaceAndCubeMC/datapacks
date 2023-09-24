bossbar set festin_estival:paliers players @a[distance=..250]
execute store result bossbar festin_estival:paliers value run scoreboard players get total fe23_paliers

execute if score total fe23_paliers matches 0..5000 run bossbar set festin_estival:paliers max 5000
execute if score total fe23_paliers matches 0..5000 run bossbar set festin_estival:paliers name [{"text":"Festin Estival","color":"#78D77C"},{"text":" - ","color":"gray"},{"text":"Palier 1","color":"#AAC8A7"}]

execute if score total fe23_paliers matches 5001..20000 run bossbar set festin_estival:paliers max 20000
execute if score total fe23_paliers matches 5001..20000 run bossbar set festin_estival:paliers name [{"text":"Festin Estival","color":"#78D77C"},{"text":" - ","color":"gray"},{"text":"Palier 2","color":"#AAC8A7"}]

execute if score total fe23_paliers matches 20001..50000 run bossbar set festin_estival:paliers max 50000
execute if score total fe23_paliers matches 20001..50000 run bossbar set festin_estival:paliers name [{"text":"Festin Estival","color":"#78D77C"},{"text":" - ","color":"gray"},{"text":"Palier 3","color":"#AAC8A7"}]

execute if score total fe23_paliers matches 50001.. run bossbar set festin_estival:paliers max 100000
execute if score total fe23_paliers matches 50001.. run bossbar set festin_estival:paliers name [{"text":"Festin Estival","color":"#78D77C"},{"text":" - ","color":"gray"},{"text":"Palier 4","color":"#AAC8A7"}]

execute if score total fe23_paliers matches 100001.. run bossbar set festin_estival:paliers max 1000000
execute if score total fe23_paliers matches 100001.. run bossbar set festin_estival:paliers name [{"text":"Festin Estival","color":"#78D77C"},{"text":" - ","color":"gray"},{"text":"Palier 5","color":"#AAC8A7"}]

execute if score total fe23_paliers matches 1000001.. run bossbar set festin_estival:paliers max 1500000
execute if score total fe23_paliers matches 1000001.. run bossbar set festin_estival:paliers name [{"text":"Festin Estival","color":"#78D77C"},{"text":" - ","color":"gray"},{"text":"Palier 6","color":"#AAC8A7"}]

execute if score total fe23_paliers matches 1500001.. run bossbar set festin_estival:paliers max 2000000
execute if score total fe23_paliers matches 1500001.. run bossbar set festin_estival:paliers name [{"text":"Festin Estival","color":"#78D77C"},{"text":" - ","color":"gray"},{"text":"Palier 7","color":"#AAC8A7"}]

execute store result score current_max fe23_paliers run bossbar get festin_estival:paliers max
scoreboard players set current_percent fe23_paliers 100
scoreboard players operation current_percent fe23_paliers *= total fe23_paliers
scoreboard players operation current_percent fe23_paliers /= current_max fe23_paliers
execute if score current_percent fe23_paliers matches 100.. run scoreboard players set current_percent fe23_paliers 100