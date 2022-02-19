tellraw @p ["",{"text":"[Esprit]: ","color":"#0da84a"},{"text":" Je ne suis pas loin… Sauve-moi s’il te plait…","color":"#8EE9BF"},{"text":"\n "}]
tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Encore cette voix, je sens que je me rapproche... Pouah ! Quelle odeur ! Je vais vite arreter de sentir, ça doit être ces gros bulbes roses qui infectent la cave.*","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Frapper le bulbe géant.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_02 11

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6