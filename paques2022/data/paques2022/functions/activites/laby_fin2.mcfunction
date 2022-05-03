tellraw @s ["",{"text":"Fred : ","bold":true,"color":"dark_purple"},{"text":"Merci d'avoir essayé de m'aider à récupérer mes objets. Nous devons vite sortir, la grotte menace de s'éffondrer !","color":"white"}]

execute in minecraft:event run tp @s -862.5 109 -181.5 -90 0

tag @s add paques_labyfin

scoreboard players reset @s paques_labytimer

effect give @s minecraft:blindness 4 0 true
effect give @s minecraft:slowness 3 100 true
