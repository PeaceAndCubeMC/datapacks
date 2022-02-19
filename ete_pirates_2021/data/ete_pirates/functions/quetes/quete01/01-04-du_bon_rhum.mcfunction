tellraw @p ["",{"text":"\n \u0020 Tu as fabriqué du rhum !","italic":true,"color":"#B151B8"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Aller voir le gérant de la brasserie.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_01 4

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6