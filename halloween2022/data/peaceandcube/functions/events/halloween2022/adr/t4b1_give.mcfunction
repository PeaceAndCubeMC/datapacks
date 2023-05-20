tellraw @s ["",{"text":"[Halloween] :","color":"red"},{"text":" Tu obtiens un avis de recherche","color":"gold"},{"text":" <\u272f\u272f\u272f\u272f Kiel-P-00>","bold":true,"color":"#3c2873"},{"text":".","color":"gold"}]

clear @s minecraft:flower_banner_pattern{Tags:hallo22_T4B1_1} 1
clear @s minecraft:flower_banner_pattern{Tags:hallo22_T4B1_2} 1

give @p flower_banner_pattern{display:{Name:'{"text":"Avis de recherche","color":"#704194","bold":true,"italic":false}',Lore:['{"text":" ✯✯✯✯ Kiel-P-00","color":"#3C2873","bold":false,"italic":false}','{"text":"Demande des informations au responsable des contrats de chasse.","color":"dark_purple","bold":false,"italic":false}','{"text":" "}','[{"text":"☠ ","color":"#F0E6DF","italic":false},{"text":"Trésor de chasse","color":"#7D7A69","italic":false}]','{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}']},HideFlags:32,CustomModelData:2022138,Tags:"hallo22_T4B1"} 1

playsound minecraft:item.book.page_turn ambient @a[distance=..10] ~ ~ ~ 50 0.8