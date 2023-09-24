execute if entity @s[advancements={festin_estival:deblocage/cidre=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Ambre Tagne","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Vive la Bretagne libre !"}]

execute if entity @s[tag=fe23_quete_cidre] if entity @s[advancements={festin_estival:quetes/cidre_drapeaux=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Ambre Tagne","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Les 12 drapeaux bretons sont dispersés partout dans la ville. Tu dois cliquer dessus !"}]
execute if entity @s[tag=fe23_quete_cidre] if entity @s[advancements={festin_estival:quetes/cidre_drapeaux=false}] run return 0

execute if entity @s[tag=fe23_quete_cidre] if entity @s[advancements={festin_estival:quetes/cidre_drapeaux=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Ambre Tagne","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Intéressant, je ne te pensais pas aussi malin... Bravo, voici donc un peu de cidre !"}]
execute if entity @s[tag=fe23_quete_cidre] if entity @s[advancements={festin_estival:quetes/cidre_drapeaux=true}] run give @s potion{display:{Name:'{"text":"Cidre","color":"#da995f","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Une boisson légèrement alcoolisée","color":"gray","italic":false}','{"text":"emblématique de la Bretagne,","color":"gray","italic":false}','{"text":"faite à partir de pommes.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},HideFlags:32,CustomModelData:7239,Tags:["fe23_cidre"],CustomPotionEffects:[{Id:2,Amplifier:0b,Duration:200,ShowParticles:0b},{Id:8,Amplifier:1b,Duration:150,ShowParticles:0b},{Id:23,Amplifier:2b,Duration:20,ShowParticles:0b}],CustomPotionColor:14326111} 1
execute if entity @s[tag=fe23_quete_cidre] if entity @s[advancements={festin_estival:quetes/cidre_drapeaux=true}] run advancement grant @s only festin_estival:deblocage/cidre
execute if entity @s[tag=fe23_quete_cidre] if entity @s[advancements={festin_estival:quetes/cidre_drapeaux=true}] run tag @s remove fe23_quete_cidre

execute unless entity @s[tag=fe23_quete_cidre] if entity @s[advancements={festin_estival:deblocage/cidre=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Ambre Tagne","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Vive la Bretagne libre ! Oh, salut toi. Si tu me prouves que tu es digne de la Bretagne, je te donnerai un peu de cette boisson typique de chez nous. Trouve les 12 drapeaux bretons dispersés dans la ville !"}]
execute unless entity @s[tag=fe23_quete_cidre] if entity @s[advancements={festin_estival:deblocage/cidre=false}] run tag @s add fe23_quete_cidre