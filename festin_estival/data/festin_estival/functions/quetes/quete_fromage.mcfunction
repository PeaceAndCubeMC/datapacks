execute unless entity @s[advancements={festin_estival:deblocage/bouteille_lait=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Cet homme est concentré sur son troupeau de vaches, je repasserai plus tard.","italic":true}]
execute unless entity @s[advancements={festin_estival:deblocage/bouteille_lait=true}] run return -1

execute if entity @s[advancements={festin_estival:deblocage/fromage=true}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Lucas Membert","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Une vache à fromage ! Eh bien, c'est mon cousin qui ne va pas en revenir !"}]
execute if entity @s[advancements={festin_estival:deblocage/fromage=true}] run return 0

execute if entity @s[tag=fe23_quete_fromage_2] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Lucas Membert","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Essaye de traire la vache !"}]
execute if entity @s[tag=fe23_quete_fromage_2] run return 0

execute if entity @s[tag=fe23_quete_fromage] if entity @s[nbt={Inventory:[{id:"minecraft:brown_mushroom"}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Lucas Membert","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Oh, ça a l'air de fonctionner... Essaye de la traire maintenant !"}]
execute if entity @s[tag=fe23_quete_fromage] if entity @s[nbt={Inventory:[{id:"minecraft:brown_mushroom"}]}] run tag @s add fe23_quete_fromage_2
execute if entity @s[tag=fe23_quete_fromage] if entity @s[nbt={Inventory:[{id:"minecraft:brown_mushroom"}]}] run return 0

execute if entity @s[tag=fe23_quete_fromage] if entity @s[nbt={Inventory:[{id:"minecraft:red_mushroom"}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Lucas Membert","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Un champignon rouge ! Mais tu veux la tuer ?"}]
execute if entity @s[tag=fe23_quete_fromage] if entity @s[nbt={Inventory:[{id:"minecraft:red_mushroom"}]}] run return 0

execute if entity @s[tag=fe23_quete_fromage] if entity @s[nbt={Inventory:[{id:"minecraft:fern"}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Lucas Membert","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Les fougères n'ont pas l'air d'avoir d'effet..."}]
execute if entity @s[tag=fe23_quete_fromage] if entity @s[nbt={Inventory:[{id:"minecraft:fern"}]}] run return 0

execute if entity @s[tag=fe23_quete_fromage] if entity @s[nbt={Inventory:[{id:"minecraft:dandelion"}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Lucas Membert","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Les pissenlits n'ont pas l'air d'avoir d'effet..."}]
execute if entity @s[tag=fe23_quete_fromage] if entity @s[nbt={Inventory:[{id:"minecraft:dandelion"}]}] run return 0

execute if entity @s[tag=fe23_quete_fromage] if entity @s[nbt={Inventory:[{id:"minecraft:poppy"}]}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Lucas Membert","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Les coquelicots n'ont pas l'air d'avoir d'effet..."}]
execute if entity @s[tag=fe23_quete_fromage] if entity @s[nbt={Inventory:[{id:"minecraft:poppy"}]}] run return 0

execute if entity @s[tag=fe23_quete_fromage] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Lucas Membert","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Il y a forcément une plante qui la soignera, j'en suis sûr !"}]
execute if entity @s[tag=fe23_quete_fromage] run return 0

execute unless entity @s[tag=fe23_quete_fromage] if entity @s[advancements={festin_estival:deblocage/fromage=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Lucas Membert","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bonjour l'ami ! J'aurais besoin de ton aide. Une de mes vaches est malade et ne produit plus de lait depuis quelques jours. Tu pourrais aller chercher différentes plantes pour essayer de la soigner ?"}]
execute unless entity @s[tag=fe23_quete_fromage] if entity @s[advancements={festin_estival:deblocage/fromage=false}] run tag @s add fe23_quete_fromage