#LES SCOREBOARD ET BOSSBAR DE L'EVENT HALLOWEEN 2022 COMMENCENT PAR "hallo_"

#jauges minerais
scoreboard objectives add hallo_jauge_affichage dummy

scoreboard objectives add hallo_jauge_rouge dummy
scoreboard objectives add hallo_jauge_rouge_clear dummy

scoreboard objectives add hallo_jauge_bleu dummy
scoreboard objectives add hallo_jauge_bleu_clear dummy

scoreboard objectives add hallo_jauge_violet dummy
scoreboard objectives add hallo_jauge_violet_clear dummy

scoreboard objectives add hallo_jauge_vert dummy
scoreboard objectives add hallo_jauge_vert_clear dummy


#récompenses
scoreboard objectives add hallo_palier_valeur dummy
scoreboard objectives add hallo_gift_globale dummy
scoreboard objectives add hallo_gift_rouge dummy
scoreboard objectives add hallo_gift_bleu dummy
scoreboard objectives add hallo_gift_violet dummy
scoreboard objectives add hallo_gift_vert dummy


#création des bossbar
bossbar add hallo_jauge_rouge [{"text":"▲","color":"red"},{"text":" Remplissage machine Rouge ","color":"gray"},{"text":"▲","color":"red"}]
bossbar set minecraft:hallo_jauge_rouge color red
bossbar set minecraft:hallo_jauge_rouge style notched_20
bossbar set minecraft:hallo_jauge_rouge max 200000

bossbar add hallo_jauge_bleu [{"text":"◆","color":"aqua"},{"text":" Remplissage machine Bleue ","color":"gray"},{"text":"◆","color":"aqua"}]
bossbar set minecraft:hallo_jauge_bleu color blue
bossbar set minecraft:hallo_jauge_bleu style notched_20
bossbar set minecraft:hallo_jauge_bleu max 125000

bossbar add hallo_jauge_violet [{"text":"▼","color":"dark_purple"},{"text":" Remplissage machine Violette ","color":"gray"},{"text":"▼","color":"dark_purple"}]
bossbar set minecraft:hallo_jauge_violet color purple
bossbar set minecraft:hallo_jauge_violet style notched_20
bossbar set minecraft:hallo_jauge_violet max 75000

bossbar add hallo_jauge_vert [{"text":"■","color":"green"},{"text":" Remplissage machine Verte ","color":"gray"},{"text":"■","color":"green"}]
bossbar set minecraft:hallo_jauge_vert color green
bossbar set minecraft:hallo_jauge_vert style notched_20
bossbar set minecraft:hallo_jauge_vert max 100000


#quête d'intro
scoreboard objectives add hallo_quete_intro dummy
scoreboard objectives add hallo_sculpte_citrouilles dummy


#quête de la pioche
scoreboard objectives add hallo22_pioche_lvl dummy
scoreboard objectives add hallo_cd_pioche dummy
scoreboard objectives add hallo_pioche_craft dummy
scoreboard objectives add hallo_cd_pioche dummy
