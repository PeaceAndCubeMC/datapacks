execute as @s unless entity @s[advancements={halloween2023:poi/aom_2015={crane=true}}] run playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~ ~ 5 1.2

execute as @s unless entity @s[advancements={halloween2023:poi/aom_2015={crane=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Un, deux, un deux. Bob ! Je suis devant un grand crâne rasta.","color":"#C5CDB5","bold":false},{"text":"\nBob le Bot","bold":true,"color":"#024050"},{"text":" : Je le vois, un très gros crâne qui me rappelle plein de souvenirs. Je m'occupe de ça et je te laisse continuer.","color":"#C5CDB5","bold":false}]

execute as @s if entity @s[advancements={halloween2023:poi/aom_2015={crane=true}}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Je suis déjà passé à cet endroit là.","color":"#C5CDB5","bold":false}]

advancement grant @s only halloween2023:poi/aom_2015 crane