execute if entity @s[scores={ete2022_quete=1}] unless entity @s[tag=ete2022_cle1,tag=ete2022_cle2,tag=ete2022_cle3] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"selector":"@s","color":"blue"},{"text":" : ","color":"blue"},{"text":"Mince c'est une serrure à trois clés... Il faut que je les trouve avant de pouvoir sortir.","color":"white"}]

execute if entity @s[tag=ete2022_cle1,tag=ete2022_cle2,tag=ete2022_cle3] as @s at @s run function peaceandcube:events/ete_2022/quete_porte_prison2


execute if entity @s[scores={ete2022_quete=2..}] at @e[type=armor_stand,distance=..20,tag=ete_quete_porte_prison,limit=1] run tp @s ~ ~-1 ~ 45 0