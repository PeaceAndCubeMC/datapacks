tellraw @s ["",{"text":"[Halloween] :","color":"red"},{"text":" Tu obtiens un avis de recherche","color":"gold"},{"text":" <\u272f\u272f\u272f Archimage déchu>","bold":true,"color":"#704194"},{"text":".","color":"gold"}]

clear @s minecraft:flower_banner_pattern{Tags:hallo22_T3B2_1} 1
clear @s minecraft:flower_banner_pattern{Tags:hallo22_T3B2_2} 1

give @p flower_banner_pattern{display:{Name:'{"text":"Avis de recherche","color":"#A1508E","bold":true,"italic":false}',Lore:['{"text":" ✯✯✯ Archimage déchu","color":"#704194","bold":false,"italic":false}','{"text":"Il habite une ancienne crypte sous le manoir.","color":"dark_purple","bold":false,"italic":false}','{"text":" "}','[{"text":"☠ ","color":"#F0E6DF","italic":false},{"text":"Trésor de chasse","color":"#7D7A69","italic":false}]','{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}']},HideFlags:32,CustomModelData:2022135,Tags:"hallo22_T3B2"} 1

playsound minecraft:item.book.page_turn ambient @a[distance=..10] ~ ~ ~ 50 0.8