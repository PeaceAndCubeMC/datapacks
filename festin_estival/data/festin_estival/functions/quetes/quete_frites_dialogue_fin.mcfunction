tellraw @s ["",{"text":"\n [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Les frites sont polyvalentes ! Elles s'adaptent à tous les plats, peu importe d'où elles viennent. Accompagnées ou toutes seules, c'est un régal !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Émile de France","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Tu as raison."}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Barnabé Lege","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" En fait, ce n'est pas si mal que les deux existent, il y en a pour tous les goûts."}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Émile de France","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Bon, des frites, ça vous dit ?"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Barnabé Lege","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Et comment, un bon cornet !"}]
tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Émile de France","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Pour moi, ça sera une assiette bien remplie avec un steak."}]

give @s baked_potato{display:{Name:'{"text":"Frites","color":"#f5b51e","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Des bâtonnets de pomme de terre,","color":"gray","italic":false}','{"text":"d\'origine française... ou belge.","color":"gray","italic":false}','{"text":" "}','{"text":"Festin Estival","color":"#78D77C","bold":true,"italic":false}','{"text":"Été 2023","color":"#AAC8A7","italic":false}']},CustomModelData:7230,Tags:["fe23_frites"]} 2
advancement grant @s only festin_estival:deblocage/frites

execute at @s run tp @s ~-2 ~ ~