tellraw @p ["",{"text":"[Pierre]:","color":"#0da84a"},{"text":" Dalut, moi c\u2019est Bierre. *sniff* Je d\u2019ai endendu barler avec le patron en bas, du viens bour aider ? *ATCHOUM*","color":"#8EE9BF"},{"text":"\n"}]
tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":"C\u2019est bien ça, dis moi ce que je dois faire.","color":"#8EE9BF"},{"text":"\n "}]
tellraw @p ["",{"text":"[Pierre]: ","color":"#0da84a"},{"text":"Alors d\u2019abord du doit aller chercher de la canne à sucre dans l\u2019endrepôt en face. *sniff* Ensuide, blace la dans le gros four en bas, allume le four et reviens à l\u2019étage. On attendra un betit peu que ça chauve, *sniff* et on fera gouler le rhum obtenu dans le bac derrière doi. Après, y\u2019aura blus qu\u2019à le mettre en boudeille. *sniff* J\u2019de laisse faire ! *SNIIFFFF*","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":"{Objectif : Aller chercher la canne à sucre dans l'entrepôt et fabriquer du rhum.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_01 3

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6