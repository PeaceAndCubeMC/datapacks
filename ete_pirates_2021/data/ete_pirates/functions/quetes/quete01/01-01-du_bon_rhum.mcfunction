tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" Trois bouteilles de rhum pour la table du fond s\u2019il vous plaît !","color":"#8EE9BF"},{"text":"\n "}]
tellraw @p ["",{"text":"[Barman]:","color":"#0da84a"},{"text":" Trois bouteilles ? Pour la table du fond ??? C\u2019est encore un coup de ce vieil alcoolo ! Désolé gamin, il me vide déjà assez mes stocks comme ça. Si tu tiens vraiment à les avoir, tu vas peut-être pouvoir me rendre un petit service. Tu vois, la production de bière marche au ralenti ces derniers jours. Tu pourrais pas aller voir ce qui se passe à la brasserie au fond du village et me rapporter quelques tonneaux ? Reviens dès que tu as réglé tout ça.","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Aller voir ce qu\u2019il se passe à la brasserie du village.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_01 1

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6