tellraw @s ["",{"text":"[Halloween] :","color":"red"},{"text":" Le","color":"gold"},{"text":" <\u272f\u272f Boucher dément>","bold":true,"color":"#A1508E"},{"text":"apparaît !","color":"gold"}]

summon vindicator 199 195 3.5 {CustomNameVisible:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Health:200f,Tags:["mob_hunt","mob_hunt_12"],CustomName:'[{"text":"Boucher dément","color":"#A1508E","bold":true,"italic":false},{"text":" ✯✯","color":"#A1508E","bold":false,"italic":false}]',HandItems:[{id:'minecraft:diamond_axe',Count:1b,tag:{display:{Name:'[{"text":"Couperet en acier inoxydable","color":"#A1508E","bold":true,"italic":false},{"text":" (✯✯)","color":"#A1508E","bold":false,"italic":false}]',Lore:["{\"text\":\" \"}","[{\"text\":\"☠ \",\"color\":\"#F0E6DF\",\"italic\":false},{\"text\":\"Trésor de chasse\",\"color\":\"#7D7A69\",\"italic\":false}]","{\"text\":\"Halloween 2022\",\"color\":\"#D45628\",\"bold\":false,\"italic\":false}"]},RepairCost:9999999,Damage:0.01,Enchantments:[{id:'minecraft:sharpness',lvl:20s},{id:'minecraft:infinity',lvl:1s}],AttributeModifiers:[{AttributeName:'generic.attack_speed',Name:'generic.attack_speed',Amount:-3.5,Operation:0,UUID:[I;-307551225,-1244902601,-1158365002,1784380487],Slot:'mainhand'},{AttributeName:'generic.attack_speed',Name:'generic.attack_speed',Amount:-3.5,Operation:0,UUID:[I;919851645,1976650059,-1875090980,-1396780765],Slot:'offhand'}]}},{id:'minecraft:flint',Count:1b,tag:{display:{Name:'[{"text":"Pierre à aiguiser","color":"#A1508E","bold":true,"italic":false},{"text":" (✯✯)","color":"#A1508E","bold":false,"italic":false}]',Lore:["{\"text\":\" \"}","[{\"text\":\"☠ \",\"color\":\"#F0E6DF\",\"italic\":false},{\"text\":\"Trésor de chasse\",\"color\":\"#7D7A69\",\"italic\":false}]","{\"text\":\"Halloween 2022\",\"color\":\"#D45628\",\"bold\":false,\"italic\":false}"]},Enchantments:[{id:'minecraft:sharpness',lvl:3s}]}}],HandDropChances:[0.100F,0.100F],ArmorItems:[{id:"minecraft:flower_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Fragment d\'avis de recherche","color":"#A1508E","bold":true,"italic":false}',Lore:['{"text":" ✯✯✯ Archimage déchu","color":"#704194","bold":false,"italic":false}','{"text":"... habite ... ancienne ... sous ... manoir.","color":"dark_purple","bold":false,"italic":false}','{"text":" "}','[{"text":"☠ ","color":"#F0E6DF","italic":false},{"text":"Trésor de chasse","color":"#7D7A69","italic":false}]','{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}']},HideFlags:32,CustomModelData:2022134,Tags:"hallo22_T3B2_2"}},{id:'minecraft:chainmail_boots',Count:1b,tag:{display:{Name:'[{"text":"Surchaussures jetables","color":"#A1508E","bold":true,"italic":false},{"text":" (✯✯)","color":"#A1508E","bold":false,"italic":false}]',Lore:["{\"text\":\" \"}","[{\"text\":\"☠ \",\"color\":\"#F0E6DF\",\"italic\":false},{\"text\":\"Trésor de chasse\",\"color\":\"#7D7A69\",\"italic\":false}]","{\"text\":\"Halloween 2022\",\"color\":\"#D45628\",\"bold\":false,\"italic\":false}"]},Enchantments:[{id:'minecraft:protection',lvl:6s},{id:'minecraft:fire_protection',lvl:4s},{id:'minecraft:feather_falling',lvl:5s},{id:'minecraft:unbreaking',lvl:10s}]}},{id:'minecraft:emerald_block',Count:1b,tag:{display:{Name:'[{"text":"Secret du chef","color":"#A1508E","bold":true,"italic":false},{"text":" (✯✯)","color":"#A1508E","bold":false,"italic":false}]',Lore:["{\"text\":\" \"}","[{\"text\":\"☠ \",\"color\":\"#F0E6DF\",\"italic\":false},{\"text\":\"Trésor de chasse\",\"color\":\"#7D7A69\",\"italic\":false}]","{\"text\":\"Halloween 2022\",\"color\":\"#D45628\",\"bold\":false,\"italic\":false}"]},Enchantments:[{id:'minecraft:fortune',lvl:1s}]}},{}],ArmorDropChances:[0.200F,0.050F,0.250F,0.250F],ActiveEffects:[{Id:12,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:200},{Name:generic.armor,Base:10}]}

clear @s minecraft:flower_banner_pattern{Tags:hallo22_T2B4} 1

playsound minecraft:entity.wither.spawn ambient @a[distance=..25] ~ ~ ~ 50 1.5