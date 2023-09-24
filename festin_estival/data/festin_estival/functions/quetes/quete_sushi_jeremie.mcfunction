execute unless entity @s[tag=fe23_quete_sushi] run clear @s minecraft:salmon_bucket{display:{Name:'{"bold":true,"italic":false,"text":"Jérémie"}'}}
execute unless entity @s[tag=fe23_quete_sushi] run advancement revoke @s only festin_estival:quetes/sushi
execute unless entity @s[tag=fe23_quete_sushi] run summon minecraft:salmon -1689 98 -338 {Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,PersistenceRequired:1b,CustomName:'{"text":"Jérémie","bold":true,"italic":false}'}

execute if entity @s[tag=fe23_quete_sushi] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" On dirait bien que je l'ai trouvé ! Plus qu'à le ramener à Terry Yaki.","italic":true}]