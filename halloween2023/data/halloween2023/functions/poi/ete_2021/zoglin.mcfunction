execute as @s unless entity @s[advancements={halloween2023:poi/ete_2021={zoglin=true}}] run playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~ ~ 5 1.2

execute as @s unless entity @s[advancements={halloween2023:poi/ete_2021={zoglin=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Pouah ! Cette pièce empeste la corruption.","color":"#C5CDB5","bold":false},{"text":"\nBob le Bot","bold":true,"color":"#024050"},{"text":" : Oui, même sans nez j'arrive à sentir l'odeur de cette pièce.","color":"#C5CDB5","bold":false}]

execute as @s if entity @s[advancements={halloween2023:poi/ete_2021={zoglin=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Je suis déjà passé à cet endroit là.","color":"#C5CDB5","bold":false}]

advancement grant @s only halloween2023:poi/ete_2021 zoglin