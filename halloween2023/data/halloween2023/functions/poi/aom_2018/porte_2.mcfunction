execute as @s unless entity @s[advancements={halloween2023:poi/aom_2018={porte_2=true}}] run playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~ ~ 5 1.2

execute as @s unless entity @s[advancements={halloween2023:poi/aom_2018={porte_2=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Une grande porte. Elle ressemble beaucoup aux deux autres.","color":"#C5CDB5","bold":false},{"text":"\nBob le Bot","bold":true,"color":"#024050"},{"text":" : Tu es allé voir les deux autres ?","color":"#C5CDB5","bold":false}]

execute as @s if entity @s[advancements={halloween2023:poi/aom_2018={porte_2=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Je suis déjà passé à cet endroit là.","color":"#C5CDB5","bold":false}]

advancement grant @s only halloween2023:poi/aom_2018 porte_2