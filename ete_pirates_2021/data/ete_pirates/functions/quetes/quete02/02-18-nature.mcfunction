tellraw @p ["",{"text":"[Dryade]: ","color":"#0da84a"},{"text":" Tu viens de sauver le monde de Peace And Cube. La créature que tu viens d'éliminer me retenait captive, et utilisait mon pouvoir pour corrompre la nature.","color":"#8EE9BF"},{"text":"\n "}]
tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" Quelle était cette créature ?","color":"#8EE9BF"},{"text":"\n"}]
tellraw @p ["",{"text":"[Dryade]: ","color":"#0da84a"},{"text":" Cette créature était auparavant un humain. Il étudiait les plantes et, un jour, découvrit une nouvelle espèce de plante dans cette grotte. Il commença à utiliser cette plante dans ses concoctions et, peu à peu, sa raison disparaissait, laissant place à la volonté de contrôler les végétaux. Avec les années, il gagna en puissance et devenait une vraie menace pour la nature de ce monde. J'ai tenté de l'arreter, mais il était trop tard. Il m'a emprisonné et a commencé à se servir de mon pouvoir...\nMais tu es arrivé à temps ! Tu l'as vaincu et m'a libérée. Voici un cadeau pour te récompenser. Cette coiffe est connectée à la nature. Il peut sembler anodin, mais il regorge de pouvoirs.","color":"#8EE9BF"},{"text":"\n"}]

tellraw @p ["",{"text":" \u0020 Tu as reçu la relique \"Coiffe du Hippie\".","italic":true,"color":"#B151B8"},{"text":"\n "}]
tellraw @p ["",{"text":"{Vous avez terminé la quête \"La force de la Nature\"}","color":"#ECC717"},{"text":"\n "}]

give @p flowering_azalea{display:{Name:'{"text":"Coiffe du Hippie","color":"#0CB800","bold":true,"italic":false}',Lore:['{"text":"Cette coiffe est reliée à la nature.","color":"#04948F","italic":false}','{"text":"Elle vous récompensera si vous agissez en sa faveur.","color":"#04948F","italic":false}','{"text":"Été 2021 - Relique","color":"#FCDB6F","bold":true,"italic":false}']},ete_pirates:couronne,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:4,Operation:0,UUID:[I;-1963128969,542133464,-2120744913,-1163577390],Slot:"head"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:4,Operation:0,UUID:[I;-453350019,1078480847,-1706548381,-1504140091],Slot:"head"},{AttributeName:"generic.luck",Name:"generic.luck",Amount:2,Operation:0,UUID:[I;1243575981,-2074983371,-2086765656,1941019245],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2,Operation:0,UUID:[I;-1737777624,-919254313,-1450282263,85321694],Slot:"head"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;2131910302,-351973962,-1215221268,909044289],Slot:"head"}]} 1

scoreboard players set @p ete_quete_02 18

execute as @p run playsound minecraft:entity.player.levelup player @p

title @p times 20 100 20
title @p subtitle {"text":"La force de la Nature.","color":"#0CB800"}
title @p title {"text":"Quête terminée !","color":"gold"}