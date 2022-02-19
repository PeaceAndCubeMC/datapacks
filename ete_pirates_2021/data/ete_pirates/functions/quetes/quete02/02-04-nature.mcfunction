tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Drôle de recette. En y repensant, la grotte est remplie de plantes. Peut-être que cette recette peut m'aider.*","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Trouver la bonne combinaison pour ouvrir la porte.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_02 4

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6