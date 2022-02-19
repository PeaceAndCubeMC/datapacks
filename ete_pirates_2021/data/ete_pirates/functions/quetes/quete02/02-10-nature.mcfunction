tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Quel est ce bruit ? La porte s'est ouverte ?*","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Continuer à avancer dans la grotte.}","color":"#ECC717"},{"text":"\n "}]

execute at @p run playsound minecraft:block.beacon.ambient master @p ~ ~ ~ 10 2
execute at @p run playsound minecraft:item.trident.return master @p ~ ~ ~ 10 0.5

scoreboard players set @p ete_quete_02 10

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6