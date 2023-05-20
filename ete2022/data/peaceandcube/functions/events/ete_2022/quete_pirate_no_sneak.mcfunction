tp @s ~35 ~25 ~-45 32 0

tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"text":"Voix inconnue","color":"red"},{"text":" : ","color":"blue"},{"text":"Eh, les gars ! Y'a du bruit par ici.","color":"white"}]

tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Été 2022","color":"green"},{"text":"] ","color":"dark_green"},{"selector":"@s","color":"blue"},{"text":" : ","color":"blue"},{"text":"Mince, j'ai fait trop de bruit, on a failli me repérer ! Je dois y retourner en m'accroupissant pour être plus silencieux","color":"white"}]

effect give @s minecraft:blindness 5 0 true

playsound minecraft:entity.illusioner.ambient ambient @s ~ ~ ~ 5 0.8

tag @s remove ete2022_cherche_indice