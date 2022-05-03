tellraw @s ["",{"text":"Fred : ","bold":true,"color":"dark_purple"},{"text":"Enfin de l'aide ! Merci d'être venu, grâce à toi, je vais enfin sortir de là. J'ai juste besoin avant de partir que tu ailles récupérer mes affaires dans la grotte, sans elles je ne peux pas vivre...\nTu devras trouver ","color":"white"},{"text":"ma lanterne","bold":true,"color":"white"},{"text":", ","color":"white"},{"text":"ma pioche","bold":true,"color":"white"},{"text":", ainsi que ","color":"white"},{"text":"mon casque","bold":true,"color":"white"},{"text":".\nQuand tu les auras, retrouve moi à ","color":"white"},{"text":"la sortie","bold":true,"color":"white"},{"text":" je t'y attendrai.\nBonne chance, tu en auras besoin...","color":"white"}]

tag @s add paques_labymineur

scoreboard players set @s paques_labytimer 6000

playsound minecraft:ambient.cave ambient @s ~ ~ ~ 10 0.5
playsound minecraft:entity.villager.celebrate ambient @s ~ ~ ~ 10 0.9