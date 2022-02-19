tellraw @p ["",{"text":"[Esprit]: ","color":"#0da84a"},{"text":" A l'aide... sous le corps de O'tille...","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" Qui est là ? … J’ai dû rêver…","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Chercher d'où provient la voix.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_02 0

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6