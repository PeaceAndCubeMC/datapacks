execute as @s unless entity @s[advancements={halloween2023:poi/aom_2018={tour=true}}] run playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~ ~ 5 1.2

execute as @s unless entity @s[advancements={halloween2023:poi/aom_2018={tour=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Une tour, tu avais raison Bob, les tours à l'AoM c'est une tradition !","color":"#C5CDB5","bold":false},{"text":"\nBob le Bot","bold":true,"color":"#024050"},{"text":" : Je suis Bob le Bot je te rappelle, je ne me trompe jamais !","color":"#C5CDB5","bold":false}]

execute as @s if entity @s[advancements={halloween2023:poi/aom_2018={tour=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Je suis déjà passé à cet endroit là.","color":"#C5CDB5","bold":false}]

advancement grant @s only halloween2023:poi/aom_2018 tour