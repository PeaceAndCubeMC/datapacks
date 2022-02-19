tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *J\u2019ai entendu du bruit, retournons à l\u2019intérieur.*","color":"#8EE9BF"},{"text":"\n"}]

tellraw @p ["",{"text":"{Objectif : Entrer dans le passage sous le meuble de la chapelle}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_01 9

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6