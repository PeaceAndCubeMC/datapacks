execute if entity @s[advancements={festin_estival:deblocage/carottes_rapees=true}] positioned ~ ~2 ~1 if data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:carrot"}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} run function festin_estival:craft/planche_a_decouper_carottes_rapees

execute if entity @s[advancements={festin_estival:deblocage/jambon=true}] positioned ~ ~2 ~1 if data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:porkchop"}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} run function festin_estival:craft/planche_a_decouper_jambon

execute if entity @s[advancements={festin_estival:deblocage/saucisse=true}] positioned ~ ~2 ~1 if data block ~ ~ ~ {Items:[{Slot:1b,id:"minecraft:sugar",tag:{Tags:["fe23_sel"]}},{Slot:4b,id:"minecraft:porkchop"}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} run function festin_estival:craft/planche_a_decouper_saucisse

execute if entity @s[advancements={festin_estival:deblocage/sushi_thon=true}] positioned ~ ~2 ~1 if data block ~ ~ ~ {Items:[{Slot:1b,id:"minecraft:salmon",tag:{Tags:["fe23_thon"]}},{Slot:4b,id:"minecraft:pumpkin_seeds",tag:{Tags:["fe23_riz"]}}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} run function festin_estival:craft/planche_a_decouper_sushi_thon

execute if entity @s[advancements={festin_estival:deblocage/sushi_saumon=true}] positioned ~ ~2 ~1 if data block ~ ~ ~ {Items:[{Slot:1b,id:"minecraft:salmon"},{Slot:4b,id:"minecraft:pumpkin_seeds",tag:{Tags:["fe23_riz"]}}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} run function festin_estival:craft/planche_a_decouper_sushi_saumon

execute if entity @s[advancements={festin_estival:deblocage/maki_thon=true}] positioned ~ ~2 ~1 if data block ~ ~ ~ {Items:[{Slot:1b,id:"minecraft:dried_kelp"},{Slot:3b,id:"minecraft:salmon",tag:{Tags:["fe23_thon"]}},{Slot:5b,id:"minecraft:apple",tag:{Tags:["fe23_avocat"]}},{Slot:7b,id:"minecraft:pumpkin_seeds",tag:{Tags:["fe23_riz"]}}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} run function festin_estival:craft/planche_a_decouper_maki_thon

execute if entity @s[advancements={festin_estival:deblocage/maki_saumon=true}] positioned ~ ~2 ~1 if data block ~ ~ ~ {Items:[{Slot:1b,id:"minecraft:dried_kelp"},{Slot:3b,id:"minecraft:salmon"},{Slot:5b,id:"minecraft:apple",tag:{Tags:["fe23_avocat"]}},{Slot:7b,id:"minecraft:pumpkin_seeds",tag:{Tags:["fe23_riz"]}}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} run function festin_estival:craft/planche_a_decouper_maki_saumon