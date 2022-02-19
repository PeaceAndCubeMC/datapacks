tellraw @p ["",{"text":"[Gérant de la brasserie]: ","color":"#0da84a"},{"text":"C\u2019est toi qui a fait tout ce rhum ?! J\u2019vais devoir penser à t\u2019embaucher. BAHAHAHA!! Tu nous a bien aidé, tiens, prend ça pour le Bat\u2019O\u2019Berge, ils devraient pouvoir tenir un peu plus longtemps. Hésite pas à revenir je pourrais t\u2019apprendre à faire autre chose que du rhum !","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Amener le rhum au barman du Bat’O’Berge.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_01 5

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6