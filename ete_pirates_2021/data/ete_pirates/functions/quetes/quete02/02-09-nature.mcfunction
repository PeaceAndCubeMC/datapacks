tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Un dernier effort ! Je suis sur que la porte va bientôt s'ouvrir.*","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Tuer 10 Rat'Dégout.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_02 9

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6