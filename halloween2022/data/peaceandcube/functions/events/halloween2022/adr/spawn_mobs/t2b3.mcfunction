tellraw @s ["",{"text":"[Halloween] :","color":"red"},{"text":" Le","color":"gold"},{"text":" <\u272f\u272f Convallaria Majaris>","bold":true,"color":"#A1508E"},{"text":"apparaît !","color":"gold"}]

summon shulker 81 78 124 {NoAI:1b,Color:10b,Peek:20b,AttachFace:0b,CustomNameVisible:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Health:150f,AttachFace:0b,Tags:["mob_hunt","mob_hunt_11"],CustomName:'[{"text":"Convallaria Majaris","color":"#A1508E","bold":true,"italic":false},{"text":" ✯✯","color":"#A1508E","bold":false,"italic":false}]',HandItems:[{id:'minecraft:spore_blossom',Count:1b,tag:{display:{Name:'[{"text":"Convallaria majalis rosea","color":"#A1508E","bold":true,"italic":false},{"text":" (✯✯)","color":"#A1508E","bold":false,"italic":false}]',Lore:["{\"text\":\" \"}","[{\"text\":\"☠ \",\"color\":\"#F0E6DF\",\"italic\":false},{\"text\":\"Trésor de chasse\",\"color\":\"#7D7A69\",\"italic\":false}]","{\"text\":\"Halloween 2022\",\"color\":\"#D45628\",\"bold\":false,\"italic\":false}"]},Enchantments:[{id:'minecraft:respiration',lvl:3s},{id:'minecraft:thorns',lvl:3s}]}},{}],HandDropChances:[0.100F,0.250F],ArmorItems:[{id:"minecraft:flower_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Fragment d\'avis de recherche","color":"#A1508E","bold":true,"italic":false}',Lore:['{"text":" ✯✯✯ Archimage déchu","color":"#704194","bold":false,"italic":false}','{"text":"Il ... une ... crypte ... le ... .","color":"dark_purple","bold":false,"italic":false}','{"text":" "}','[{"text":"☠ ","color":"#F0E6DF","italic":false},{"text":"Trésor de chasse","color":"#7D7A69","italic":false}]','{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}']},HideFlags:32,CustomModelData:2022133,Tags:"hallo22_T3B2_1"}},{id:'minecraft:azalea_leaves',Count:1b,tag:{display:{Name:'[{"text":"Folium","color":"#A1508E","bold":true,"italic":false},{"text":" (✯✯)","color":"#A1508E","bold":false,"italic":false}]',Lore:["{\"text\":\" \"}","[{\"text\":\"☠ \",\"color\":\"#F0E6DF\",\"italic\":false},{\"text\":\"Trésor de chasse\",\"color\":\"#7D7A69\",\"italic\":false}]","{\"text\":\"Halloween 2022\",\"color\":\"#D45628\",\"bold\":false,\"italic\":false}"]},Enchantments:[{id:'minecraft:infinity',lvl:1s}]}},{id:'minecraft:red_shulker_box',Count:1b,tag:{display:{Name:'[{"text":"Coeur de fleur","color":"#A1508E","bold":true,"italic":false},{"text":" (✯✯)","color":"#A1508E","bold":false,"italic":false}]',Lore:["{\"text\":\" \"}","[{\"text\":\"☠ \",\"color\":\"#F0E6DF\",\"italic\":false},{\"text\":\"Trésor de chasse\",\"color\":\"#7D7A69\",\"italic\":false}]","{\"text\":\"Halloween 2022\",\"color\":\"#D45628\",\"bold\":false,\"italic\":false}"]},Enchantments:[{id:'minecraft:protection',lvl:4s},{id:'minecraft:thorns',lvl:1s}],AttributeModifiers:[{AttributeName:'generic.armor',Name:'generic.armor',Amount:4,Operation:0,UUID:[I;1635856750,1779977519,-1631706210,1711199286],Slot:'head'}]}},{id:'minecraft:mangrove_propagule',Count:1b,tag:{display:{Name:'[{"text":"Jeune pousse","color":"#A1508E","bold":true,"italic":false},{"text":" (✯✯)","color":"#A1508E","bold":false,"italic":false}]',Lore:["{\"text\":\" \"}","[{\"text\":\"☠ \",\"color\":\"#F0E6DF\",\"italic\":false},{\"text\":\"Trésor de chasse\",\"color\":\"#7D7A69\",\"italic\":false}]","{\"text\":\"Halloween 2022\",\"color\":\"#D45628\",\"bold\":false,\"italic\":false}"]}}}],ArmorDropChances:[0.200F,0.250F,0.050F,0.250F],ActiveEffects:[{Id:12,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:150},{Name:generic.armor,Base:10}]}

clear @s minecraft:flower_banner_pattern{Tags:hallo22_T2B3} 1

playsound minecraft:entity.wither.spawn ambient @a[distance=..25] ~ ~ ~ 50 1.5