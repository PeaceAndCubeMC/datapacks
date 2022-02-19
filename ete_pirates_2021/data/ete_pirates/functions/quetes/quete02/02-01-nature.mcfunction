tellraw @p ["",{"text":"[Esprit]: ","color":"#0da84a"},{"text":" Au secours... aidez-moi...","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" Encore cette voix ? Il se passe quelque chose par ici...","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Explorer les alentours.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_02 1

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6