advancement revoke @p only paques2022:taper_zomboeuf

scoreboard players add @e[type=player,distance=..1,sort=nearest,limit=1] oeufs 4
scoreboard players add @e[type=player,distance=..1,sort=nearest,limit=1] oeufs_money 4
scoreboard players add total_oeuf oeufs 4
scoreboard players add #boss oeufs 4
scoreboard players add #raid_seau oeufs 4

tellraw @e[type=player,distance=..1,sort=nearest,limit=1] {"text":"+4 oeuf","color":"#F3D443"}

playsound minecraft:item.bundle.drop_contents ambient @e[type=player,distance=..1,sort=nearest,limit=1] ~ ~ ~ 2 0.6
playsound minecraft:block.big_dripleaf.tilt_down ambient @e[type=player,distance=..1,sort=nearest,limit=1] ~ ~ ~ 2 0.6
playsound minecraft:entity.chicken.egg ambient @e[type=player,distance=..1,sort=nearest,limit=1] ~ ~ ~ 2 0.6
playsound minecraft:entity.shulker.open ambient @e[type=player,distance=..1,sort=nearest,limit=1] ~ ~ ~ 2 0.6