tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *AHHH ! Ce bruit venait de la haut ! Eliminer ces bulbes a dû réveillé quelque chose. Je devrais aller voir.*","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Trouver d'où vient le bruit.}","color":"#ECC717"},{"text":"\n "}]

execute at @p run playsound minecraft:entity.ravager.ambient master @p ~ ~ ~ 10 0.5
execute at @p run playsound minecraft:entity.ravager.ambient master @p ~ ~ ~ 10 0.5
execute at @p run playsound minecraft:entity.ravager.ambient master @p ~ ~ ~ 10 0.5

scoreboard players set @p ete_quete_02 13

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6