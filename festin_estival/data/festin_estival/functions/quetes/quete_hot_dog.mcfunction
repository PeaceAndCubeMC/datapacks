execute unless entity @s[advancements={festin_estival:deblocage/saucisse=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Cette grand-mère semble contrariée. Je repasserai plus tard pour voir ce qu'il se passe.","italic":true}]
execute unless entity @s[advancements={festin_estival:deblocage/saucisse=true}] run return -1

execute if entity @s[advancements={festin_estival:deblocage/hot_dog=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Margaux Secours","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Merci d'avoir retrouvé mon chien !"}]
execute if entity @s[advancements={festin_estival:deblocage/hot_dog=true}] run return 0

execute if entity @s[tag=fe23_quete_hot_dog] unless entity @s[tag=fe23_quete_hot_dog_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Margaux Secours","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Tu as retrouvé le gosse ? Il s'appelle Paul."}]
execute if entity @s[tag=fe23_quete_hot_dog] unless entity @s[tag=fe23_quete_hot_dog_3] run return 0

execute if entity @s[tag=fe23_quete_hot_dog] if entity @s[tag=fe23_quete_hot_dog_3] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Margaux Secours","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oh, tu dis que mon chien est tombé dans la cheminée ? Et bah ça fera un chien chaud !"}]
execute if entity @s[tag=fe23_quete_hot_dog] if entity @s[tag=fe23_quete_hot_dog_3] run advancement grant @s only festin_estival:deblocage/hot_dog
execute if entity @s[tag=fe23_quete_hot_dog] if entity @s[tag=fe23_quete_hot_dog_3] run tag @s remove fe23_quete_hot_dog_2
execute if entity @s[tag=fe23_quete_hot_dog] if entity @s[tag=fe23_quete_hot_dog_3] run tag @s remove fe23_quete_hot_dog_3
execute if entity @s[tag=fe23_quete_hot_dog] if entity @s[advancements={festin_estival:deblocage/hot_dog=true}] run tag @s remove fe23_quete_hot_dog

execute unless entity @s[tag=fe23_quete_hot_dog] if entity @s[advancements={festin_estival:deblocage/hot_dog=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Margaux Secours","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Au secours, au secours ! J'ai perdu mon chien ce matin, un gosse lui courait après ! Pourrais-tu retrouver ce vilain garnement ? Son nom est Paul."}]
execute unless entity @s[tag=fe23_quete_hot_dog] if entity @s[advancements={festin_estival:deblocage/hot_dog=false}] run tag @s add fe23_quete_hot_dog