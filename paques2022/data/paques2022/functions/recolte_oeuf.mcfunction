scoreboard players add @e[type=player,distance=..1,sort=nearest,limit=1] oeufs 2
scoreboard players add @e[type=player,distance=..1,sort=nearest,limit=1] oeufs_money 2
scoreboard players add total_oeuf oeufs 2
scoreboard players add #boss oeufs 2
scoreboard players add #raid_seau oeufs 2

playsound minecraft:item.bundle.drop_contents ambient @e[type=player,distance=..1,sort=nearest,limit=1] ~ ~ ~ 2 1
playsound minecraft:block.big_dripleaf.tilt_down ambient @e[type=player,distance=..1,sort=nearest,limit=1] ~ ~ ~ 2 1
playsound minecraft:entity.chicken.egg ambient @e[type=player,distance=..1,sort=nearest,limit=1] ~ ~ ~ 2 1

tellraw @e[type=player,distance=..1,sort=nearest,limit=1] {"text":"+2 oeuf","color":"#F3D443"}

kill @e[type=minecraft:armor_stand,distance=..0.5,tag=oeuf2022,sort=nearest,limit=1]