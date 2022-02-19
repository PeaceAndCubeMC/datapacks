tellraw @p ["",{"text":"[Gérant de la brasserie]: ","color":"#0da84a"},{"text":"Bienvenue à la brasserie BarbeMousse ! Qu'est-ce que je peux faire pour toi ?","color":"#8EE9BF"},{"text":"\n "}]
tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" Je viens de la part du Bat\u2019O\u2019Berge, il y aurait des problèmes de stock, l\u2019auberge va bientôt manquer d\u2019alcool. Avec tout les gens qui arrivent dans la ville, ça risque de poser problème.","color":"#8EE9BF"},{"text":"\n "}]
tellraw @p ["",{"text":"[Gérant de la brasserie]:","color":"#0da84a"},{"text":" T\u2019inquiète pas, on est au courant. Le problème est que l\u2019un de nos employés est parti en mer il y a quelques jours, et nous n\u2019avons pas de nouvelles. Le connaissant, il devrait bien s\u2019en sortir, mais nous on manque de main d'\u0153uvre !","color":"#8EE9BF"},{"text":"\n "}]
tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" Je pourrais peut être le remplacer pour rattraper le retard dans les commandes ?","color":"#8EE9BF"},{"text":"\n "}]
tellraw @p ["",{"text":"[Gérant de la brasserie]: ","color":"#0da84a"},{"text":"Avec plaisir ! Va voir mon collègue Pierre à l\u2019étage, il va te dire quoi faire.","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Parler à Pierre à l’étage de la brasserie BarbeMousse.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_01 2

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6