scoreboard players set @s noel21_ph_lvl 2
scoreboard players set @s noel21_ph_points 0
clear @s minecraft:fishing_rod{Tags:["ph_canne_21","ph_canne_lvl_1"]} 1
give @s fishing_rod{display:{Name:'[{"text":"Ca","color":"#805E4C","bold":true,"italic":false},{"text":"n","color":"#7E6351"},{"text":"n","color":"#7C6959"},{"text":"e ","color":"#797061"},{"text":"à ","color":"#767768"},{"text":"f","color":"#747D71"},{"text":"r","color":"#708381"},{"text":"o","color":"#6E8B81"},{"text":"i","color":"#6B9189"},{"text":"d","color":"#68998F"}]',Lore:['{"text":"Niveau de pêche : 2","color":"#C4FDFF","italic":false}','{"text":" "}','{"text":"« Idéale pour pêcher l\'hiver »","color":"#B3B3B3"}','{"text":" "}','{"text":"Pêche hivernale - Canne à pêche","color":"#1363BF","italic":false}','[{"text":"No","color":"#B70D00","bold":true,"italic":false},{"text":"ël ","color":"#FFFFFF","bold":true,"italic":false},{"text":"20","color":"#B70D00","bold":true,"italic":false},{"text":"21","color":"#FFFFFF","bold":true,"italic":false}]']},HideFlags:5,RepairCost:99999999,Unbreakable:1b,CustomModelData:21001,ph_lvl:2,Tags:["ph_canne_21","ph_canne_lvl_2"]} 1
tellraw @s ["",{"text":"Phil Edpech","bold":true,"color":"#C4FDFF"},{"text":" \u2744","color":"white"},{"text":" >","bold":true,"color":"#C4FDFF"},{"text":" Félicitations, tu viens de passer au niveau ","color":"#6BED8F"},{"score":{"name":"@s","objective":"noel21_ph_lvl"},"bold":true,"color":"#C4FDFF"},{"text":" de pêche !","color":"#6BED8F"}]
execute as @s run playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~ ~ 10 2