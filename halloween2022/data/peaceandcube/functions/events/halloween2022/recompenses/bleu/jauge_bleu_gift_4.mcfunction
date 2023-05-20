execute if score @s hallo_jauge_bleu < bleu_4 hallo_palier_valeur run tellraw @s ["",{"text":"Techno-chercheur","bold":true,"color":"aqua"},{"text":":","color":"gray"},{"text":" Tu as déjà déposé ","color":"#699FA2"},{"score":{"name":"@s","objective":"hallo_jauge_bleu"},"bold":true,"color":"yellow"},{"text":" minerais bleus ","color":"#699FA2"},{"text":"\u25c6","color":"aqua"},{"text":". Dépose en ","color":"#699FA2"},{"score":{"name":"bleu_4","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":" pour recevoir ta prochaine récompense !","color":"#699FA2"}]

execute if data entity @s SelectedItem if score @s hallo_jauge_bleu >= bleu_4 hallo_palier_valeur run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"aqua"},{"text":":","color":"gray","bold":false},{"text":" J'ai quelque chose à te donner, vide ta main et reviens me voir !","color":"#699FA2","bold":false}]


execute unless data entity @s SelectedItem if score @s hallo_jauge_bleu >= bleu_4 hallo_palier_valeur run scoreboard players set @s hallo_gift_bleu 4

execute unless data entity @s SelectedItem if score @s hallo_jauge_bleu >= bleu_4 hallo_palier_valeur run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"aqua"},{"text":":","color":"gray","bold":false},{"text":" Tiens, voilà un cadeau pour te remercier d'avoir déposé ","color":"#699FA2","bold":false},{"score":{"name":"bleu_4","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":" minerais bleus ","color":"#699FA2","bold":false},{"text":"\u25c6","color":"aqua","bold":false},{"text":" !","color":"#699FA2","bold":false}]
execute unless data entity @s SelectedItem if score @s hallo_jauge_bleu >= bleu_4 hallo_palier_valeur run give @s light_blue_shulker_box{display:{Name:'{"text":"Trick or treat","color":"aqua","bold":true,"italic":false}',Lore:['{"text":" "}','[{"text":"◆","color":"aqua","italic":false},{"text":" 10000 minerais bleus déposés","color":"#7D7A69","italic":false}]','{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}']},BlockEntityTag:{Items:[{Slot:11b,id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Monstre d\'Halloween n°7","color":"#8C2216","bold":true,"italic":false}',Lore:['[{"text":"","bold":false,"italic":false},{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}]']},SkullOwner:{Id:[I;1850136523,1443908717,-1874414080,716217916],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjhjODljZDMzM2IwZmNiY2E4ODQyNDI1OTcyOWI4ODk1OWZhZThmODlhZjhkMGMxMjBlNjIxMDJkNTNjOWRiYiJ9fX0="}]}}}},{Slot:12b,id:"minecraft:potion",Count:2b,tag:{display:{Name:'{"text":"Berceuse","color":"#38E8E2","bold":true,"italic":false}',Lore:['[{"text":"","bold":false,"italic":false},{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}]']},CustomPotionEffects:[{Id:2,Amplifier:29b,Duration:1000},{Id:33,Amplifier:0b,Duration:1200}],CustomPotionColor:3729634}},{Slot:13b,id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Monstre d\'Halloween n°8","color":"#8C2216","bold":true,"italic":false}',Lore:['[{"text":"","bold":false,"italic":false},{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}]']},SkullOwner:{Id:[I;798825661,1036012238,-1249944469,-769648676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTBmYWZlNjg2NWJkODI3OWEzY2JjOWMyNjcyYWMzZjAxZWQ0ZDUwOGZkY2YzNWJkZWZkNDMxZWI4ZTE0ZTIzMyJ9fX0="}]}}}},{Slot:14b,id:"minecraft:lingering_potion",Count:2b,tag:{display:{Name:'{"text":"Berceuse","color":"#38E8E2","bold":true,"italic":false}',Lore:['[{"text":"","bold":false,"italic":false},{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}]']},CustomPotionEffects:[{Id:2,Amplifier:29b,Duration:1000},{Id:33,Amplifier:0b,Duration:1200}],CustomPotionColor:3729634}},{Slot:15b,id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Monstre d\'Halloween n°9","color":"#8C2216","bold":true,"italic":false}',Lore:['[{"text":"","bold":false,"italic":false},{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}]']},SkullOwner:{Id:[I;-351167129,-744535812,-1800592915,2105391688],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTYxN2EzNGM4ZmY0NjdmZGI0NWJlM2ZmMTc4NjNmY2ZmN2U4NDI0YzhkZDliOTk2NjZlZGQxM2I0NGIzMmU4YyJ9fX0="}]}}}}]}} 1
