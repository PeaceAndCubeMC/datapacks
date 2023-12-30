execute as @s unless entity @s[advancements={halloween2023:poi/halloween_2020={friandise=true}}] run playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~ ~ 5 1.2

execute as @s unless entity @s[advancements={halloween2023:poi/halloween_2020={friandise=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Voilà une maison aux drôles de couleurs. Bob ? Tu vois ça ?","color":"#C5CDB5","bold":false},{"text":"\nBob le Bot","bold":true,"color":"#024050"},{"text":" : Oui, c'est ici que les habitants déposaient les friandises qu'ils récoltaient pour lever une malédiction qui plannait sur la région. Je te laisse poursuivre tes recherches.","color":"#C5CDB5","bold":false}]

execute as @s if entity @s[advancements={halloween2023:poi/halloween_2020={friandise=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Je suis déjà passé à cet endroit là.","color":"#C5CDB5","bold":false}]

advancement grant @s only halloween2023:poi/halloween_2020 friandise