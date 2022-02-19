tellraw @p ["",{"text":"[","color":"#D247D2"},{"selector":"@p","color":"#D247D2"},{"text":"]:","color":"#D247D2"},{"text":" *La source ! Elle existe bel et bien !*","color":"#8EE9BF"},{"text":"\n "}]

tellraw @p ["",{"text":" \u0020 Tu as reçu la Corne d\'Abondance. Pour plus d\'information sur son fonctionnement, clique sur le bouton à coté de la source.","italic":true,"color":"#B151B8"},{"text":"\n "}]

tellraw @p ["",{"text":"{Vous avez terminé la quête \"Du bon Rhum\"}","color":"#ECC717"},{"text":"\n "}]

give @p potion{display:{Name:'{"text":"Corne d\'Abondance","color":"#FFE605","bold":true,"italic":false}',Lore:['{"text":"Cette relique regorge de nourriture.","color":"#04948F","italic":false}','{"text":"Y manger vous fera oublier toute sensation de faim.","color":"#04948F","italic":false}','{"text":"[Chargée : 10/10]","color":"#43AB07","bold":true,"italic":false}','{"text":"Été 2021 - Relique","color":"#FCDB6F","bold":true,"italic":false}']},HideFlags:32,utilisation:u10,ete_pirates:corne_abondance,CustomPotionEffects:[{Id:10b,Amplifier:19b,Duration:20},{Id:23b,Amplifier:19b,Duration:20,ShowParticles:0b}],Potion:"minecraft:empty",CustomPotionColor:16747584} 1

scoreboard players set @p ete_quete_01 12

execute as @p run playsound minecraft:entity.player.levelup player @p