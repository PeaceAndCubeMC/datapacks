execute as @s unless entity @s[advancements={halloween2023:poi/halloween_2016={citrouille=true}}] run playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~ ~ 5 1.2

execute as @s unless entity @s[advancements={halloween2023:poi/halloween_2016={citrouille=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Une grosse citrouille.","color":"#C5CDB5","bold":false},{"text":"\nBob le Bot","bold":true,"color":"#024050"},{"text":" : Attends, attends, bouge pas trop vite, cette citrouille est parfaite... Merci ! ","color":"#C5CDB5","bold":false}]

execute as @s if entity @s[advancements={halloween2023:poi/halloween_2016={citrouille=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Je suis déjà passé à cet endroit là.","color":"#C5CDB5","bold":false}]

advancement grant @s only halloween2023:poi/halloween_2016 citrouille