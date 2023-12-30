execute as @s unless entity @s[advancements={halloween2023:poi/deroute={pyramide=true}}] run playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~ ~ 5 1.2

execute as @s unless entity @s[advancements={halloween2023:poi/deroute={pyramide=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Allô, allô, Bob ? Je suis au pied d'une ancienne pyramide !","color":"#C5CDB5","bold":false},{"text":"\nBob le Bot","bold":true,"color":"#024050"},{"text":" : Génial, ça me suffit pour avancer sur le tri des données ! Si j'étais toi, je ne resterais pas devant au vu des crânes disposés un peu partout.","color":"#C5CDB5","bold":false}]

execute as @s if entity @s[advancements={halloween2023:poi/deroute={pyramide=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Je suis déjà passé à cet endroit là.","color":"#C5CDB5","bold":false}]

advancement grant @s only halloween2023:poi/deroute pyramide