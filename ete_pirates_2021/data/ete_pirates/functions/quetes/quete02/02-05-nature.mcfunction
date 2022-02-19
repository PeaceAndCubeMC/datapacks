tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *J'ai entendu du bruit, la porte à dû s'ouvrir !*","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Passer la porte et continuer d'explorer la grotte.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_02 5

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6