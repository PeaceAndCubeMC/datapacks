tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Ces créatures sont coriaces. J'en ai tué pas mal, mais ça n'a pas l'air de suffire... Je dois essayer d'en tuer plus.*","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Tuer 15 Acariens infectés.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_02 7

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6