#verification du score hallo_pioche_lvl du joueur et changement des enchantements de la pioche en fonction du niveau

execute as @s if predicate peaceandcube:halloween2022/pioche_mainhand if score @s hallo22_pioche_lvl matches 1 run item modify entity @s weapon.mainhand peaceandcube:halloween2022/enchant_lvl_1
execute as @s if predicate peaceandcube:halloween2022/pioche_offhand if score @s hallo22_pioche_lvl matches 1 run item modify entity @s weapon.offhand peaceandcube:halloween2022/enchant_lvl_1

execute as @s if predicate peaceandcube:halloween2022/pioche_mainhand if score @s hallo22_pioche_lvl matches 2 run item modify entity @s weapon.mainhand peaceandcube:halloween2022/enchant_lvl_2
execute as @s if predicate peaceandcube:halloween2022/pioche_offhand if score @s hallo22_pioche_lvl matches 2 run item modify entity @s weapon.offhand peaceandcube:halloween2022/enchant_lvl_2

execute as @s if predicate peaceandcube:halloween2022/pioche_mainhand if score @s hallo22_pioche_lvl matches 3 run item modify entity @s weapon.mainhand peaceandcube:halloween2022/enchant_lvl_3
execute as @s if predicate peaceandcube:halloween2022/pioche_offhand if score @s hallo22_pioche_lvl matches 3 run item modify entity @s weapon.offhand peaceandcube:halloween2022/enchant_lvl_3

execute as @s if predicate peaceandcube:halloween2022/pioche_mainhand if score @s hallo22_pioche_lvl matches 4 run item modify entity @s weapon.mainhand peaceandcube:halloween2022/enchant_lvl_4
execute as @s if predicate peaceandcube:halloween2022/pioche_offhand if score @s hallo22_pioche_lvl matches 4 run item modify entity @s weapon.offhand peaceandcube:halloween2022/enchant_lvl_4


#retire les enchantements si le joueur a ajouté mending sur la pioche

execute as @s if predicate peaceandcube:halloween2022/pioche_mainhand_mending run item modify entity @s weapon.mainhand peaceandcube:halloween2022/enchant_remove
execute as @s if predicate peaceandcube:halloween2022/pioche_offhand_mending run item modify entity @s weapon.offhand peaceandcube:halloween2022/enchant_remove

