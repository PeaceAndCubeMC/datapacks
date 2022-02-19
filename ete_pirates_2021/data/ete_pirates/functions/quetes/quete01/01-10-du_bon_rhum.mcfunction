tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *J\u2019ai réussi à passer, allons voir ce qu\u2019il y a en bas.*","color":"#8EE9BF"},{"text":"\n"}]

tellraw @p ["",{"text":"{Objectif : Explorer le passage situé sous la chapelle.}","color":"#ECC717"},{"text":"\n "}]

tp @p 200236.5 130 -299629.4 0 90

scoreboard players set @p ete_quete_01 10

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6