execute if entity @s[scores={ete2022_quete=6},tag=!ete2022_hint2] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"selector":"@s","color":"blue"},{"text":" : ","color":"blue"},{"text":"Une lettre :\n\"Mon cher ami O'Nance, les comptes sont bon ce mois ci. Comme convenu avec vous, nous avons attaqué les 2 maisons sur la plage. -RV\"","color":"white"}]

execute if entity @s[scores={ete2022_quete=6},tag=ete2022_hint2] unless entity @s[scores={ete2022_quete=6},tag=ete2022_hint1,tag=ete2022_hint2,tag=ete2022_hint3] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"selector":"@s","color":"blue"},{"text":" : ","color":"blue"},{"text":"J'ai déjà fouillé ici.","color":"white"}]

execute if entity @s[scores={ete2022_quete=6},tag=!ete2022_hint2] run scoreboard players add @s ete2022_hints 1

execute if entity @s[scores={ete2022_quete=6},tag=!ete2022_hint2] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":" Indices trouvés ","color":"yellow"},{"score":{"name":"@s","objective":"ete2022_hints"},"color":"gold"},{"text":"/3","color":"gold"}]

execute if entity @s[scores={ete2022_quete=6},tag=!ete2022_hint2] run tag @s add ete2022_hint2


execute if entity @s[scores={ete2022_quete=6},tag=ete2022_hint2,tag=!ete2022_hint3] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"selector":"@s","color":"blue"},{"text":" : ","color":"blue"},{"text":"Lord O'Nance ?! Il serait vraiment dans le coup ?","color":"white"}]

execute if entity @s[scores={ete2022_quete=6},tag=ete2022_hint2,tag=ete2022_hint3] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"selector":"@s","color":"blue"},{"text":" : ","color":"blue"},{"text":"Plus aucun doute, Lord O'Nance est responsable de ces pillages.","color":"white"}]


execute if entity @s[scores={ete2022_quete=6},tag=ete2022_hint1,tag=ete2022_hint2,tag=ete2022_hint3] run scoreboard players set @s ete2022_quete 7

execute if entity @s[scores={ete2022_quete=7},tag=ete2022_hint1,tag=ete2022_hint2,tag=ete2022_hint3] as @s run function peaceandcube:events/ete_2022/quete_base_pirate_hints_done


