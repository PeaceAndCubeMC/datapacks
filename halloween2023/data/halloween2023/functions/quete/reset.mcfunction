# Tirage de la quête
execute store result storage h23 quete int 1 run random value 1..9

scoreboard objectives remove h23_quete
scoreboard objectives add h23_quete dummy