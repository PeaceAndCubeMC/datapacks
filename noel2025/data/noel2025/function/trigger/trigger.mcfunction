# Fonction avec macro
# - action : breed|consume|kill
# - biome : dry|end|exotic|forest|nether|ocean|plains|snowy
# - spawn_rate : 1..100
# - sound : id de son
# Exemple : function noel2025:trigger/trigger {action:"breed",biome:"dry",spawn_rate:20,sound:"entity.husk.hurt"}

$advancement revoke @s only noel2025:trigger/$(action)/$(action)_$(biome)

# Check si le mob pourra spawn dans un endroit valide
execute if block ~ ~-1 ~ #air run return -1

# Random pour savoir si un mob va spawn
execute store result score @s noel2025_random run random value 1..100
$execute unless score @s noel2025_random matches 1..$(spawn_rate) run return -1

# Random pour savoir quel mob va spawn
execute store result score @s noel2025_random run random value 1..4
$execute at @s if score @s noel2025_random matches 1 run function noel2025:summon/$(biome)/summon_mob_1
$execute at @s if score @s noel2025_random matches 2 run function noel2025:summon/$(biome)/summon_mob_2
$execute at @s if score @s noel2025_random matches 3 run function noel2025:summon/$(biome)/summon_mob_3
$execute at @s if score @s noel2025_random matches 4 run function noel2025:summon/$(biome)/summon_mob_4

# Indication au joueur
tellraw @s [[{"text":"Noël","color":"#C13C3F","bold":true,"italic":false},{"text":" 2025","color":"white"}],{"text":" >> ","color":"gray","bold":false},{"text":"Un gobelin est apparu !","color":"#F5EACE","bold":false}]
$execute at @s run playsound $(sound) master @s ~ ~ ~

# Augmentation des scores
$scoreboard players add $(biome) noel2025_spawn_global 1
scoreboard players add total noel2025_spawn_global 1
scoreboard players add @s noel2025_spawn_joueur 1
