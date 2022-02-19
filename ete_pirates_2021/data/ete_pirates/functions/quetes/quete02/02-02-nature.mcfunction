tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Hmmm….Cette grotte m’a l’air bizarre et dangereuse… ALLONS Y !*","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Entrer dans la grotte.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_02 2

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6