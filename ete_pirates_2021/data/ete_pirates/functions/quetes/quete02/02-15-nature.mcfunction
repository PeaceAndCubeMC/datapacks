tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Pfiou, il était coriace celui-là !*","color":"#8EE9BF"},{"text":"\n "}]
tellraw @p ["",{"text":"[Esprit]: ","color":"#0da84a"},{"text":" Tu n'es plus très loin, je le sens... Passe la dernière porte...","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Passer la dernière porte dans la grotte.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_02 15

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6