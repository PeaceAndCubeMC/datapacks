execute as @s unless entity @s[tag=hallo_pioche] run tellraw @s [{"text":"Garde","bold":true,"color":"gray"},{"text":":","color":"gray","bold":false},{"text":" Je ne peux pas te laisser entrer sans équipement. Reviens avec une pioche si tu veux passer. Tu peux en obtenir une chez le ","color":"#699FA2","bold":false},{"text":"Forgeron","bold":true,"color":"gray"},{"text":".","color":"#699FA2","bold":false}]

execute as @s if entity @s[tag=hallo_pioche] run tp @s ~4 ~ ~3