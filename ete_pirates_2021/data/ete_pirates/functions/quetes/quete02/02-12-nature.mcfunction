tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Je le frappe, mais ça n'a pas l'air de faire grand chose. Il est lié à ces autres plus petit bulbes un peu partout dans la  grotte. Je devrais essayer de les détruire avant de toucher à celui là.*","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Frapper les 5 petit bulbe dans la grotte.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_02 12

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6