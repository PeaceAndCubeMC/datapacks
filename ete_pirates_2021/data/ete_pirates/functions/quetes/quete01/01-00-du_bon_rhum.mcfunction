tellraw @p ["",{"text":"[Le vieux Deux paires d\u2019Yeux]: ","color":"#0da84a"},{"text":"Ahh ! Encore un p\u2019tit gars qui va perdre son temps avec cette légende. *Hic* Si tu veux que je t\u2019en raconte plus, ramène moi quelques bouteilles de rhum !","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Aller chercher des bières au bar.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_01 0

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6