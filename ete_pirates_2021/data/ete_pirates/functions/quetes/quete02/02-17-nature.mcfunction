tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Cette créature... On aurait dit un être humain...*","color":"#8EE9BF"},{"text":"\n "}]
tellraw @p ["",{"text":"[Dryade]: ","color":"#0da84a"},{"text":" Merci aventurier, viens, approche toi.","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Parler à la Dryade.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_02 17

execute as @p run playsound minecraft:entity.ender_dragon.death master @p ~ ~ ~ 0.2 1.5
execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6