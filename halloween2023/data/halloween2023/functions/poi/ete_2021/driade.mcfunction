execute as @s unless entity @s[advancements={halloween2023:poi/ete_2021={driade=true}}] run playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~ ~ 5 1.2

execute as @s unless entity @s[advancements={halloween2023:poi/ete_2021={driade=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Je n'ai jamais respiré un air aussi pur que dans cette salle. Bob ? C'est ici qu'était la dryade ?","color":"#C5CDB5","bold":false},{"text":"\nBob le Bot","bold":true,"color":"#024050"},{"text":" : Oui, c'est bien ici ! Profite de la sérénité de cet endroit. Pas trop longtemps non plus, on a encore du boulot !","color":"#C5CDB5","bold":false}]

execute as @s if entity @s[advancements={halloween2023:poi/ete_2021={driade=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Je suis déjà passé à cet endroit là.","color":"#C5CDB5","bold":false}]

advancement grant @s only halloween2023:poi/ete_2021 driade