execute unless entity @s[advancements={festin_estival:deblocage/jus_raisin=true,festin_estival:deblocage/vin_rouge=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Thomas Serrer","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Place tes ingrédients dans le dropper situé sous le fût, en respectant la recette affichée dans ton guide. Le résultat de la recette tombera dans le tonneau.\n Si certaines de tes bouteilles prennent trop de place dans ton inventaire, tu peux en empiler jusqu'à 64 à l'aide de l'empileur d'items à ma gauche."}]

execute if entity @s[advancements={festin_estival:deblocage/jus_raisin=true,festin_estival:deblocage/vin_rouge=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"selector":"@s","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" En voulant faire du vin rouge dans l'extracteur de boisson, j'ai fait du jus de raisin !"}]
execute if entity @s[advancements={festin_estival:deblocage/jus_raisin=true,festin_estival:deblocage/vin_rouge=false}] run tellraw @s ["",{"text":" [","bold":true,"color":"gray"},{"text":"Thomas Serrer","bold":true,"color":"#78D77C"},{"text":"]","bold":true,"color":"gray"},{"text":" Hum, c'est normal... Le vin rouge se fait comme du jus de raisin, mais dans un fût, ici-même !"}]
execute if entity @s[advancements={festin_estival:deblocage/jus_raisin=true,festin_estival:deblocage/vin_rouge=false}] run advancement grant @s only festin_estival:deblocage/vin_rouge