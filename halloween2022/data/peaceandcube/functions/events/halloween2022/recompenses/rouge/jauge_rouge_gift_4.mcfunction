execute if score @s hallo_jauge_rouge < rouge_4 hallo_palier_valeur run tellraw @s ["",{"text":"Techno-chercheur","bold":true,"color":"red"},{"text":":","color":"gray"},{"text":" Tu as déjà déposé ","color":"#699FA2"},{"score":{"name":"@s","objective":"hallo_jauge_rouge"},"bold":true,"color":"yellow"},{"text":" minerais rouges ","color":"#699FA2"},{"text":"\u25b2","color":"red"},{"text":". Dépose en ","color":"#699FA2"},{"score":{"name":"rouge_4","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":" pour recevoir ta prochaine récompense !","color":"#699FA2"}]

execute if data entity @s SelectedItem if score @s hallo_jauge_rouge >= rouge_4 hallo_palier_valeur run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"red"},{"text":":","color":"gray","bold":false},{"text":" J'ai quelque chose à te donner, vide ta main et reviens me voir !","color":"#699FA2","bold":false}]


execute unless data entity @s SelectedItem if score @s hallo_jauge_rouge >= rouge_4 hallo_palier_valeur run scoreboard players set @s hallo_gift_rouge 4

execute unless data entity @s SelectedItem if score @s hallo_jauge_rouge >= rouge_4 hallo_palier_valeur run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"red"},{"text":":","color":"gray","bold":false},{"text":" Tiens, voilà un cadeau pour te remercier d'avoir déposé ","color":"#699FA2","bold":false},{"score":{"name":"rouge_4","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":" minerais rouges ","color":"#699FA2","bold":false},{"text":"\u25b2","color":"red","bold":false},{"text":" !","color":"#699FA2","bold":false}]
execute unless data entity @s SelectedItem if score @s hallo_jauge_rouge >= rouge_4 hallo_palier_valeur run give @s red_shulker_box{display:{Name:'{"text":"Trick or treat","color":"red","bold":true,"italic":false}',Lore:['{"text":" "}','[{"text":"▲","color":"red","italic":false},{"text":" 16000 minerais rouges déposés","color":"#7D7A69","italic":false}]','{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}']},BlockEntityTag:{Items:[{Slot:11b,id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Monstre d\'Halloween n°10","color":"#8C2216","bold":true,"italic":false}',Lore:['[{"text":"","bold":false,"italic":false},{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}]']},SkullOwner:{Id:[I;-2135623377,-846246757,-1986096968,-427911609],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmFmZmNkYjA3MjkyYjY2ODY3MzYyM2NlNjNhNjEzZjQ1NzFlZjg1YzFlZmM5MjVmYTJmOGYyZmY4OTUzMzg1OSJ9fX0="}]}}}},{Slot:12b,id:"minecraft:potion",Count:2b,tag:{display:{Name:'{"text":"Mort en bouteille","color":"#292929","bold":true,"italic":false}',Lore:['[{"text":"","bold":false,"italic":false},{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}]']},CustomPotionEffects:[{Id:20,Amplifier:0b,Duration:600}],CustomPotionColor:0}},{Slot:13b,id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Monstre d\'Halloween n°11","color":"#8C2216","bold":true,"italic":false}',Lore:['[{"text":"","bold":false,"italic":false},{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}]']},SkullOwner:{Id:[I;212653453,285229491,-1819612106,-1305095747],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWM0OWE0NDFmNjFhYmYzZGM0M2UzNzUzOWVmM2E5YzQ1MTQwYmYzNzQyMTM5ZmY1MzY3OGU5MDJmNTczNzE0MiJ9fX0="}]}}}},{Slot:14b,id:"minecraft:lingering_potion",Count:2b,tag:{display:{Name:'{"text":"Mort en bouteille","color":"#292929","bold":true,"italic":false}',Lore:['[{"text":"","bold":false,"italic":false},{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}]']},CustomPotionEffects:[{Id:20,Amplifier:0b,Duration:600}],CustomPotionColor:0}},{Slot:15b,id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Monstre d\'Halloween n°12","color":"#8C2216","bold":true,"italic":false}',Lore:['[{"text":"","bold":false,"italic":false},{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}]']},SkullOwner:{Id:[I;218442626,-110933663,-2117931334,617945776],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzBhNDA4ODlhYjAzMWY1ZDY3MDQzOTNjYzkwMDVhNjg1OGFjYmIyY2I5YTRlZmMzZWQ3MGFhNmJmMTM4ZDA1NCJ9fX0="}]}}}}]}} 1