execute if entity @s[advancements={festin_estival:deblocage/jus_pomme=true}] positioned ~-1 ~2 ~ if data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:apple"},{Slot:7b,id:"minecraft:glass_bottle"}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} run function festin_estival:craft/extracteur_boisson_jus_pomme

execute if entity @s[advancements={festin_estival:deblocage/jus_raisin=true}] positioned ~-1 ~2 ~ if data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:sweet_berries",tag:{Tags:["fe23_raisin"]}},{Slot:7b,id:"minecraft:glass_bottle"}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} run function festin_estival:craft/extracteur_boisson_jus_raisin
execute if entity @s[advancements={festin_estival:deblocage/jus_raisin=false,festin_estival:deblocage/vin_rouge=true}] positioned ~-1 ~2 ~ if data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:sweet_berries",tag:{Tags:["fe23_raisin"]}},{Slot:7b,id:"minecraft:glass_bottle"}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} run function festin_estival:craft/extracteur_boisson_jus_raisin

execute if entity @s[advancements={festin_estival:deblocage/sirop_coquelicot=true}] positioned ~-1 ~2 ~ if data block ~ ~ ~ {Items:[{Slot:1b,id:"minecraft:sugar"},{Slot:4b,id:"minecraft:poppy"},{Slot:7b,id:"minecraft:glass_bottle"}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} run function festin_estival:craft/extracteur_boisson_sirop_coquelicot

execute if entity @s[advancements={festin_estival:deblocage/chocolat_chaud=true}] positioned ~-1 ~2 ~ if data block ~ ~ ~ {Items:[{Slot:1b,id:"minecraft:sugar"},{Slot:4b,id:"minecraft:cocoa_beans"},{Slot:7b,id:"minecraft:potion",tag:{Tags:["fe23_bouteille_lait"]}}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} run function festin_estival:craft/extracteur_boisson_chocolat_chaud