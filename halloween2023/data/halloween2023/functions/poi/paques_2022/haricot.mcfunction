execute as @s unless entity @s[advancements={halloween2023:poi/paques_2022={haricot=true}}] run playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~ ~ 5 1.2

execute as @s unless entity @s[advancements={halloween2023:poi/paques_2022={haricot=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Ce haricot est gigantesque !","color":"#C5CDB5","bold":false},{"text":"\nBob le Bot","bold":true,"color":"#024050"},{"text":" : Oui ! Il montait jusqu'aux nuages de la cloche de Pâques. Je vais voir si je peux pas trouver la référence de l'engrais dans les connaissances que tu m'as rapporté. Ça sera super pour mon petit potager !","color":"#C5CDB5","bold":false}]

execute as @s if entity @s[advancements={halloween2023:poi/paques_2022={haricot=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Je suis déjà passé à cet endroit là.","color":"#C5CDB5","bold":false}]

advancement grant @s only halloween2023:poi/paques_2022 haricot