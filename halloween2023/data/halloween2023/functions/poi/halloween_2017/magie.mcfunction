execute as @s unless entity @s[advancements={halloween2023:poi/halloween_2017={magie=true}}] run playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~ ~ 5 1.2

execute as @s unless entity @s[advancements={halloween2023:poi/halloween_2017={magie=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Un shop magie directement au spawn ? Ils n'avaient pas la chance d'avoir un warp... quand la magie était encore disponible.","color":"#C5CDB5","bold":false},{"text":"\nBob le Bot","bold":true,"color":"#024050"},{"text":" : C'est vrai, la magie a été très présente sur le serveur, mais les choses évoluent ! Viens me voir quand tu auras trouvé les trois points d'intérêts de ce vieux spawn.","color":"#C5CDB5","bold":false}]

execute as @s if entity @s[advancements={halloween2023:poi/halloween_2017={magie=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Je suis déjà passé à cet endroit là.","color":"#C5CDB5","bold":false}]

advancement grant @s only halloween2023:poi/halloween_2017 magie