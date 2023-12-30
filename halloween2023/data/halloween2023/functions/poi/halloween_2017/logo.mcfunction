execute as @s unless entity @s[advancements={halloween2023:poi/halloween_2017={logo=true}}] run playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~ ~ 5 1.2

execute as @s unless entity @s[advancements={halloween2023:poi/halloween_2017={logo=true}}] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Lève la tête !\n","color":"#C5CDB5","bold":false},{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Oh ! Happy Halloween ! Ça devait être sympa de se connecter et de voir ça flotter dans le ciel du spawn.","color":"#C5CDB5","bold":false},{"text":"\nBob le Bot","bold":true,"color":"#024050"},{"text":" : Oui, certain ! J'en ai fini avec les données de cet endroit, tu peux continuer.","color":"#C5CDB5","bold":false}]

execute as @s if entity @s[advancements={halloween2023:poi/halloween_2017={logo=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Je suis déjà passé à cet endroit là.","color":"#C5CDB5","bold":false}]

advancement grant @s only halloween2023:poi/halloween_2017 logo