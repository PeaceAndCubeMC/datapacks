###Joueur n'a pas finis la quête d'intro

execute unless entity @s[tag=hallo_intro] run tellraw @s [{"text":"Forgeron","bold":true,"color":"gray"},{"text":":","color":"gray","bold":false},{"text":" Bonjour, je suis le forgeron de l'île. Viens me voir si tu as besoin d'outils !","color":"#699FA2","bold":false}]


###Joueur crafte la pioche (si intro finie et pas déjà crafté pioche récemment)

#Si le joueur a tout les items pour craft la pioche

execute if entity @s[scores={hallo_pioche_craft=1},nbt={Inventory:[{tag:{Tags:hallo22_pioche_iron}},{tag:{Tags:hallo22_pioche_bois}},{tag:{Tags:hallo22_pioche_fibre}}]}] run scoreboard players set @s hallo_cd_pioche 1
execute if entity @s[scores={hallo_cd_pioche=1}] run tellraw @s [{"text":"Forgeron","bold":true,"color":"gray"},{"text":":","color":"gray","bold":false},{"text":" Et voilà, une belle pioche toute neuve ! Prends-en soin, je compte sur toi !","color":"#699FA2","bold":false}]
execute if entity @s[scores={hallo_cd_pioche=1}] run tag @s add hallo_pioche
execute if entity @s[scores={hallo_cd_pioche=1}] run scoreboard players reset @s hallo_pioche_craft
execute if entity @s[scores={hallo_cd_pioche=1}] run clear @s minecraft:iron_ingot{Tags:hallo22_pioche_iron} 2
execute if entity @s[scores={hallo_cd_pioche=1}] run clear @s minecraft:string{Tags:hallo22_pioche_fibre} 1
execute if entity @s[scores={hallo_cd_pioche=1}] run clear @s minecraft:stick{Tags:hallo22_pioche_bois} 1
execute if entity @s[scores={hallo_cd_pioche=1}] run give @s iron_pickaxe{CanDestroy:["minecraft:raw_gold_block","minecraft:raw_iron_block","minecraft:ochre_froglight","minecraft:verdant_froglight","minecraft:pearlescent_froglight","minecraft:fire_coral_block","minecraft:sculk","minecraft:sculk_vein","minecraft:raw_copper_block","minecraft:amethyst_block"],display:{Name:'{"text":"Spooky-pioche","color":"#C9B9A8","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Outils","color":"#7D7A69","italic":false}','{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}']},Tags:["hallo22_pioche"],Enchantments:[{id:"minecraft:unbreaking",lvl:4s}]} 1
#Pour eviter que le joueur se give +ieurs fois la pioche
execute if entity @s[scores={hallo_cd_pioche=1}] run scoreboard players set @s hallo_cd_pioche 2
execute if entity @s[scores={hallo_cd_pioche=2}] run tellraw @s [{"text":"Forgeron","bold":true,"color":"gray"},{"text":":","color":"gray","bold":false},{"text":" Fait attention à ne pas la casser ! Tu peux venir la réparer ici, et si jamais tu la perds tu peux venir me voir toute les 6 heures (0h, 6h, 12h et 18h) pour que je t'en refasse une.","color":"#699FA2","bold":false}]


#Si le joueur commence la quête ou est en train de la faire

execute if entity @s[tag=hallo_intro] unless entity @s[scores={hallo_cd_pioche=-1..}] run tellraw @s [{"selector":"@s","color":"aqua","bold":true},{"text":": ","color":"aqua"},{"text":"Bonjour monsieur le forgeron, j'aurais besoin d'une pioche. Pouvez vous m'en fabriquer une ?","color":"#699FA2","bold":false}]
execute if entity @s[tag=hallo_intro] unless entity @s[scores={hallo_cd_pioche=-1..}] run tellraw @s [{"text":"Forgeron","bold":true,"color":"gray"},{"text":":","color": "gray","bold":false},{"text":" Je savais que tu viendrais me voir ! Je peux te faire ta pioche, mais je manque de matériaux... Tu pourrais aller les récupérer pour moi ? Voilà ce qu'il me faut :","color":"#699FA2","bold":false},{"text":"\n"},{"text":"- Du ","color":"#699FA2","bold":false},{"text":"bois solide","bold":true,"color":"#926937"},{"text":", tu peux en trouver au pied d'un vieil arbre près du monastère.\n- De la ","color":"#699FA2","bold":false},{"text":"fibre végétale","bold":true,"color":"#D8E068"},{"text":", il y en aura sûrement près des champs du village.\n- ","color":"#699FA2","bold":false},{"text":"Deux (2)","color":"#699FA2","bold":true},{"text":" lingots de ","color":"#699FA2","bold":false},{"text":"métal","bold":true,"color":"#B5B5B5"},{"text":", on en trouve dans une grotte minière, l'entrée se trouve quelque part dans la forêt.","color":"#699FA2","bold":false}]

#active le drop des items sur les mobs (DeathLootTable active quand le score existe)
execute if entity @s[tag=hallo_intro] unless entity @s[scores={hallo_cd_pioche=-1..}] run scoreboard players set @s hallo_pioche_craft 1

#Initialise le niveau de mineur du joueur
execute if entity @s[tag=hallo_pioche] unless score @s hallo22_pioche_lvl matches -1.. run scoreboard players set @s hallo22_pioche_lvl 1