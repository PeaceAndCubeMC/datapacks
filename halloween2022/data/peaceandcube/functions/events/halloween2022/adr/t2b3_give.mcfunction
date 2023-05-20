tellraw @s ["",{"text":"[Halloween] :","color":"red"},{"text":" Tu obtiens un avis de recherche","color":"gold"},{"text":" <\u272f\u272f Convalaria Majaris>","bold":true,"color":"#A1508E"},{"text":".","color":"gold"}]

clear @s minecraft:flower_banner_pattern{Tags:hallo22_T2B3_1} 1
clear @s minecraft:flower_banner_pattern{Tags:hallo22_T2B3_2} 1

give @s flower_banner_pattern{display:{Name:'{"text":"Avis de recherche","color":"#A14C4C","bold":true,"italic":false}',Lore:['{"text":" ✯✯ Convallaria Majaris","color":"#A1508E","bold":false,"italic":false}','{"text":"Maître d’une cavité, il contemple des ruines enracinées.","color":"dark_purple","bold":false,"italic":false}','{"text":" "}','[{"text":"☠ ","color":"#F0E6DF","italic":false},{"text":"Trésor de chasse","color":"#7D7A69","italic":false}]','{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}']},HideFlags:32,CustomModelData:2022126,Tags:"hallo22_T2B3"} 1

playsound minecraft:item.book.page_turn ambient @a[distance=..10] ~ ~ ~ 50 0.8