execute if entity @s[scores={ete2022_quete=9},tag=ete2022_boss] run scoreboard players add @s ete2022_boss_count 1

execute if entity @s[scores={ete2022_quete=9},tag=ete2022_boss] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"text":"Le Lord O'Nance à été vaincu ! Le village va pouvoir retrouver son calme. Vous êtes le nouveau héros de PeaceAndCube !","color":"gold"}]

execute if entity @s[scores={ete2022_quete=9},tag=ete2022_boss,advancements={peaceandcube:events/ete2022_quete=false}] run tellraw @a ["",{"selector":"@s","color":"yellow"},{"text":": Merci au Staff de PeaceAndCube, et plus particulièrement à Sc4ri_ et Vico08lv pour l'événement de l'été que j'ai trouvé génial !","color":"gray"}]

execute if entity @s[scores={ete2022_quete=9},tag=ete2022_boss] run advancement grant @s only peaceandcube:events/ete2022_quete

#execute if entity @s[scores={ete2022_quete=9},tag=ete2022_boss] run playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~ ~ 2 0.7


execute if entity @s[scores={ete2022_quete=9},tag=ete2022_boss] run tag @s remove ete2022_boss

