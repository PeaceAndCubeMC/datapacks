tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" Voilà du rhum !","color":"#8EE9BF"},{"text":"\n"}]
tellraw @p ["",{"text":"[Barman]:","color":"#0da84a"},{"text":" Où est-ce que tu as déniché tout ça ?! Soit, ça va bien nous aider, vu le nombre de clients qu\u2019on a ces derniers temps. Merci pour ton aide gamin, et tiens, le rhum pour le vieu alcoolo du fond, comme promis.","color":"#8EE9BF"},{"text":"\n"}]

tellraw @p ["",{"text":"{Objectif :  Retourner voir Deux Paires d’Yeux}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_01 6

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6