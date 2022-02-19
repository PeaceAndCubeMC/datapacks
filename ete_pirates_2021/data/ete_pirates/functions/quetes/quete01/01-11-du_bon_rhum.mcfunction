tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" \u0020 *Un livre...*","color":"#8EE9BF"},{"text":" \n"}]
tellraw @p ["",{"text":" \u0020 Il existait en ce monde une source dont l\u2019eau effaçait toute sensation de faim. Un peuple ancien, conscient du grand pouvoir de cette source, décida de la condamner à jamais et de garder l\u2019entrée en construisant cette crypte sous la chapelle. Mais, quelques années plus tard, de l\u2019eau s\u2019est mise à couler contre les parois d\u2019une grotte...","italic":true,"color":"#B151B8"},{"text":"\n "}]
tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" \u0020*Il manque des pages, mais il y a quelque chose d\u2019écrit.*","color":"#8EE9BF"},{"text":"\n"}]
tellraw @p ["",{"text":" \u0020 La source coule bien dans la grotte. Je n\u2019ai rien dit à mon équipage, ni à personne d\u2019autre. Je ne me sens pas capable de posséder un tel pouvoir. J\u2019ai caché l\u2019entrée derrière des roches et des feuillages. -Capitaine Pac O\u2019Tille","italic":true,"color":"#B151B8"},{"text":"\n "}]
tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *Pac O\u2019Tille ? Le capitaine du vieux est donc le grand-père de Pac Sparrow. En tout cas, il semblerait qu\u2019il n\u2019ai pas vraiment abandonné. Trouvons cette source. La chapelle a été construite dessus, et d\u2019après Pac O\u2019Tille, elle se trouve bien dans une grotte.* ","color":"#8EE9BF"},{"text":"\n"}]

tellraw @p ["",{"text":"{Objectif :  Trouver la grotte où coule la source.}","color":"#ECC717"},{"text":"\n "}]

scoreboard players set @p ete_quete_01 11

execute as @p run playsound minecraft:block.note_block.xylophone master @p ~ ~ ~ 1 0.6