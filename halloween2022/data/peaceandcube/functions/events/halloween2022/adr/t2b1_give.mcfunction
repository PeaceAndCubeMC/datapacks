tellraw @s ["",{"text":"[Halloween] :","color":"red"},{"text":" Tu obtiens un avis de recherche","color":"gold"},{"text":" <\u272f\u272f Bénalian Damné>","bold":true,"color":"#A1508E"},{"text":".","color":"gold"}]

clear @s minecraft:flower_banner_pattern{Tags:hallo22_T2B1_1} 1
clear @s minecraft:flower_banner_pattern{Tags:hallo22_T2B1_2} 1

give @s flower_banner_pattern{display:{Name:'{"text":"Avis de recherche","color":"#A14C4C","bold":true,"italic":false}',Lore:['{"text":" ✯✯ Bénalian Damné","color":"#A1508E","bold":false,"italic":false}','{"text":"Sous une arche fongiforme, il tourmente les pèlerins.","color":"dark_purple","bold":false,"italic":false}','{"text":" "}','[{"text":"☠ ","color":"#F0E6DF","italic":false},{"text":"Trésor de chasse","color":"#7D7A69","italic":false}]','{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}']},HideFlags:32,CustomModelData:2022120,Tags:"hallo22_T2B1"} 1

playsound minecraft:item.book.page_turn ambient @a[distance=..10] ~ ~ ~ 50 0.8