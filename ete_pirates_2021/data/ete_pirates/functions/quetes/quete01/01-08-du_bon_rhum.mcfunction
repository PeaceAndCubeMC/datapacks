tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Il semblerait qu\u2019il y ait un passage ici, mais impossible de bouger le meuble, il a l\u2019air bloqué. Il doit y avoir quelque chose pour le débloquer. Je vais inspecter les alentours.*","color":"#8EE9BF"},{"text":"\n"}]

tellraw @p ["",{"text":"{Objectif : Trouver un moyen de débloquer le passage dans la chapelle.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_01 8

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6