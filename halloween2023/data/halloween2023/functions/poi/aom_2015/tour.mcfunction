execute as @s unless entity @s[advancements={halloween2023:poi/aom_2015={tour=true}}] run playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~ ~ 5 1.2

execute as @s unless entity @s[advancements={halloween2023:poi/aom_2015={tour=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Bob ? Voici la tour de l'AoM, j'imagine.","color":"#C5CDB5","bold":false},{"text":"\nBob le Bot","bold":true,"color":"#024050"},{"text":" : Une tour, toujours des tours ! Les différents AoM en ont eu beaucoup. J'aimais bien celle là.","color":"#C5CDB5","bold":false}]

execute as @s if entity @s[advancements={halloween2023:poi/aom_2015={tour=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Je suis déjà passé à cet endroit là.","color":"#C5CDB5","bold":false}]

advancement grant @s only halloween2023:poi/aom_2015 tour