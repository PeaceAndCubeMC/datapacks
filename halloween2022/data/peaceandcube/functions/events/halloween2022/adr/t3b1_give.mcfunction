tellraw @s ["",{"text":"[Halloween] :","color":"red"},{"text":" Tu obtiens un avis de recherche","color":"gold"},{"text":" <\u272f\u272f\u272f Lord Outre-Tombe et Grobide>","bold":true,"color":"#704194"},{"text":".","color":"gold"}]

clear @s minecraft:flower_banner_pattern{Tags:hallo22_T3B1_1} 1
clear @s minecraft:flower_banner_pattern{Tags:hallo22_T3B1_2} 1

give @p flower_banner_pattern{display:{Name:'{"text":"Avis de recherche","color":"#A1508E","bold":true,"italic":false}',Lore:['{"text":" ✯✯✯ Lord Outre-Tombe & Grobide","color":"#704194","bold":false,"italic":false}','{"text":"Caché parmi les cucurbitacées, il attend le bon moment pour piller.","color":"dark_purple","bold":false,"italic":false}','{"text":" "}','[{"text":"☠ ","color":"#F0E6DF","italic":false},{"text":"Trésor de chasse","color":"#7D7A69","italic":false}]','{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}']},HideFlags:32,CustomModelData:2022132,Tags:"hallo22_T3B1"} 1

playsound minecraft:item.book.page_turn ambient @a[distance=..10] ~ ~ ~ 50 0.8