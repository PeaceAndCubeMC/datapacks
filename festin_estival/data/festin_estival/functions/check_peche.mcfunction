execute if entity @s[advancements={festin_estival:peche/sel_recup=true}] run clear @s minecraft:sugar{Tags:["fe23_sel"]} 3
execute if entity @s[advancements={festin_estival:peche/sel_recup=true}] run advancement revoke @s only festin_estival:peche/sel_peche
execute if entity @s[advancements={festin_estival:peche/sel_recup=true}] run advancement revoke @s only festin_estival:peche/sel_recup

execute if entity @s[advancements={festin_estival:peche/thon_recup=true}] run clear @s minecraft:salmon{Tags:["fe23_thon"]} 3
execute if entity @s[advancements={festin_estival:peche/thon_recup=true}] run advancement revoke @s only festin_estival:peche/thon_peche
execute if entity @s[advancements={festin_estival:peche/thon_recup=true}] run advancement revoke @s only festin_estival:peche/thon_recup

execute if entity @s[advancements={festin_estival:peche/moule_recup=true}] run clear @s minecraft:tropical_fish{Tags:["fe23_moule"]} 3
execute if entity @s[advancements={festin_estival:peche/moule_recup=true}] run advancement revoke @s only festin_estival:peche/moule_peche
execute if entity @s[advancements={festin_estival:peche/moule_recup=true}] run advancement revoke @s only festin_estival:peche/moule_recup