tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *La porte ne s'ouvre toujours pas. Je dois continuer à en tuer.*","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Tuer 10 Vaseux.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_02 8

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6