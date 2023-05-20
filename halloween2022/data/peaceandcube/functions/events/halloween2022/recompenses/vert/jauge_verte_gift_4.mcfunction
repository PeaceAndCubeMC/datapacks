execute if score @s hallo_jauge_vert < vert_4 hallo_palier_valeur run tellraw @s ["",{"text":"Techno-chercheur","bold":true,"color":"green"},{"text":":","color":"gray"},{"text":" Tu as déjà déposé ","color":"#699FA2"},{"score":{"name":"@s","objective":"hallo_jauge_vert"},"bold":true,"color":"yellow"},{"text":" minerais verts ","color":"#699FA2"},{"text":"\u25a0","color":"green"},{"text":". Dépose en ","color":"#699FA2"},{"score":{"name":"vert_4","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":" pour recevoir ta prochaine récompense !","color":"#699FA2"}]

execute if data entity @s SelectedItem if score @s hallo_jauge_vert >= vert_4 hallo_palier_valeur run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"green"},{"text":":","color":"gray","bold":false},{"text":" J'ai quelque chose à te donner, vide ta main et reviens me voir !","color":"#699FA2","bold":false}]


execute unless data entity @s SelectedItem if score @s hallo_jauge_vert >= vert_4 hallo_palier_valeur run scoreboard players set @s hallo_gift_vert 4

execute unless data entity @s SelectedItem if score @s hallo_jauge_vert >= vert_4 hallo_palier_valeur run tellraw @s [{"text":"Techno-chercheur","bold":true,"color":"green"},{"text":":","color":"gray","bold":false},{"text":" Tiens, voilà un cadeau pour te remercier d'avoir déposé ","color":"#699FA2","bold":false},{"score":{"name":"vert_4","objective":"hallo_palier_valeur"},"bold":true,"color":"yellow"},{"text":" minerais verts ","color":"#699FA2","bold":false},{"text":"\u25a0","color":"green","bold":false},{"text":" !","color":"#699FA2","bold":false}]
execute unless data entity @s SelectedItem if score @s hallo_jauge_vert >= vert_4 hallo_palier_valeur run give @s lime_shulker_box{display:{Name:'{"text":"Trick or treat","color":"green","bold":true,"italic":false}',Lore:['{"text":" "}','[{"text":"■","color":"green","italic":false},{"text":" 8000 minerais verts déposés","color":"#7D7A69","italic":false}]','{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}']},BlockEntityTag:{Items:[{Slot:11b,id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Monstre d\'Halloween n°1","color":"#8C2216","bold":true,"italic":false}',Lore:['[{"text":"","bold":false,"italic":false},{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}]']},SkullOwner:{Id:[I;-1792567357,79318466,-1846463131,236586192],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWJmNmZkY2Y0ZDEzYjQxNTU2NjllNTFmMDllNTcxMTdiNjI2ODhmYmUwZDg4YTQ0MmNiNzhlMmY0NjAzNGMxOCJ9fX0="}]}}}},{Slot:12b,id:"minecraft:potion",Count:2b,tag:{display:{Name:'{"text":"Potion de désespoir","color":"#322D42","bold":true,"italic":false}',Lore:['[{"text":"","bold":false,"italic":false},{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}]']},CustomPotionEffects:[{Id:2,Amplifier:2b,Duration:300},{Id:17,Amplifier:4b,Duration:200}],CustomPotionColor:3288386}},{Slot:13b,id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Monstre d\'Halloween n°2","color":"#8C2216","bold":true,"italic":false}',Lore:['[{"text":"","bold":false,"italic":false},{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}]']},SkullOwner:{Id:[I;-621882134,-1464119619,-1290130189,-1195916805],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGYyODk0ODA1MjYzYzJlOGYyN2I0YjdmZjE4YTI1YzNkNjQ3Nzk5ZjJjZDdlYTliZmZlZDVkMDhjYzdhOGJkNyJ9fX0="}]}}}},{Slot:14b,id:"minecraft:lingering_potion",Count:2b,tag:{display:{Name:'{"text":"Potion de désespoir","color":"#322D42","bold":true,"italic":false}',Lore:['[{"text":"","bold":false,"italic":false},{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}]']},CustomPotionEffects:[{Id:2,Amplifier:2b,Duration:1200},{Id:17,Amplifier:4b,Duration:900}],CustomPotionColor:3288386}},{Slot:15b,id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Monstre d\'Halloween n°3","color":"#8C2216","bold":true,"italic":false}',Lore:['[{"text":"","bold":false,"italic":false},{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}]']},SkullOwner:{Id:[I;1779970074,880430241,-2060934226,-22087780],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWIxM2JmNjcxMDcwZGZiZDA3MDE4M2ZkODc2MzU0YWVmM2I0YTVlMWI1MTE1YTU5MGRlYjI2ZTkwY2JkYTI2YSJ9fX0="}]}}}}]}} 1
