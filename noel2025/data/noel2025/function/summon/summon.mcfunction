# Fonction avec macro
# - name : nom de l'entité
# - color : couleur du nom
# - biome : dry|end|exotic|forest|nether|ocean|plains|snowy
# - equipment : équipement de l'entité
# - drop_chances : taux de drop de l'équipement
# Exemple : execute summon minecraft:husk run function noel2025:summon/summon {name:"Korvak",color:"#F6D7B0",biome:"dry",equipment:{},drop_chances:{}}

$data merge entity @s {CustomName:{"text":"$(name)","color":"$(color)","bold":true},CustomNameVisible:1b,PersistenceRequired:1b,IsBaby:0b,IsImmuneToZombification:1b,DeathLootTable:"minecraft:empty",attributes:[{id:"scale",base:0.5},{id:"max_health",base:40},{id:"armor",base:10},{id:"armor_toughness",base:2},{id:"attack_damage",base:6}],Health:40,equipment:$(equipment),drop_chances:$(drop_chances),Tags:["noel2025","noel2025_$(biome)","noel2025_$(name)"]}

execute if entity @s[type=enderman] run data modify entity @s AngryAt set from entity @p UUID
execute if entity @s[type=zombified_piglin] run data modify entity @s AngryAt set from entity @p UUID

execute unless entity @s[type=#noel2025:no_mainhand] run item modify entity @s weapon.mainhand noel2025:lore_footer
execute if entity @s[type=#noel2025:no_mainhand] run item modify entity @s armor.body noel2025:lore_footer

$item modify entity @s weapon.offhand noel2025:trade/trade_$(biome)
$item modify entity @s armor.head noel2025:armor/armor_$(biome)
$item modify entity @s armor.chest noel2025:armor/armor_$(biome)
$item modify entity @s armor.legs noel2025:armor/armor_$(biome)
$item modify entity @s armor.feet noel2025:armor/armor_$(biome)


give @p red_shulker_box[custom_name={"bold":true,"color":"#278960","italic":false,"text":"Cadeau du Staff"},lore=[" ",{"color":"#8FADF1","italic":false,"text":"Un gros cadeau rempli"},{"color":"#8FADF1","italic":false,"text":"de belles surprises."}," ",{"color":"#F5EACE","italic":false,"text":"Calendrier de l'Avent"},[{"color":"#F5EACE","italic":false,"text":"🎁 Jour "},{"bold":true,"color":"#E3B340","italic":false,"text":"25"}],[{"bold":true,"color":"#C13C3F","italic":false,"text":"Noël"},{"color":"white","text":" 2025"}]],container=[{slot:0,item:{id:"minecraft:honey_bottle",count:1}},{slot:1,item:{id:"minecraft:lapis_lazuli",count:32}},{slot:2,item:{id:"minecraft:ancient_debris",count:4}},{slot:3,item:{id:"minecraft:cooked_mutton",count:32}},{slot:4,item:{id:"minecraft:netherite_ingot",count:1}},{slot:5,item:{id:"minecraft:cooked_mutton",count:32}},{slot:6,item:{id:"minecraft:ancient_debris",count:4}},{slot:7,item:{id:"minecraft:lapis_lazuli",count:32}},{slot:8,item:{id:"minecraft:honey_bottle",count:1}},{slot:9,item:{id:"minecraft:orange_tulip",count:1}},{slot:10,item:{id:"minecraft:amethyst_shard",count:16}},{slot:11,item:{id:"minecraft:diamond",count:10}},{slot:12,item:{id:"minecraft:shulker_shell",count:2}},{slot:13,item:{id:"minecraft:elytra",count:1,components:{custom_name:{"italic":false,"color":"#278960","bold":true,"text":"Ailes brumeuses"},enchantments:{mending:1,protection:2,unbreaking:3},attribute_modifiers:[{type:"minecraft:armor",operation:"add_value",amount:1.0d,id:"minecraft:armor",slot:"chest"}],lore:[" ",{"italic":false,"color":"#8FADF1","text":"De quoi planer dans"},{"italic":false,"color":"#8FADF1","text":"les vents frais d'hiver."}," ",{"italic":false,"color":"#F5EACE","text":"Calendrier de l'Avent"},{"italic":false,"extra":[{"italic":false,"color":"#E3B340","bold":true,"text":"25"}],"color":"#F5EACE","text":"🎁 Jour "},{"italic":false,"extra":[{"color":"white","text":" 2025"}],"color":"#C13C3F","bold":true,"text":"Noël"}]}}},{slot:14,item:{id:"minecraft:shulker_shell",count:2}},{slot:15,item:{id:"minecraft:diamond",count:10}},{slot:16,item:{id:"minecraft:amethyst_shard",count:16}},{slot:17,item:{id:"minecraft:orange_tulip",count:1}},{slot:18,item:{id:"minecraft:honey_bottle",count:1}},{slot:19,item:{id:"minecraft:gold_ingot",count:16}},{slot:20,item:{id:"minecraft:emerald",count:24}},{slot:21,item:{id:"minecraft:enchanted_golden_apple",count:1}},{slot:22,item:{id:"minecraft:netherite_upgrade_smithing_template",count:1}},{slot:23,item:{id:"minecraft:bedrock",count:1}},{slot:24,item:{id:"minecraft:emerald",count:24}},{slot:25,item:{id:"minecraft:gold_ingot",count:16}},{slot:26,item:{id:"minecraft:honey_bottle",count:1}}]] 1