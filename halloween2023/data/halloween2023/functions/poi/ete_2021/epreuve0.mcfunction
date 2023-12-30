execute as @s if entity @s[advancements={halloween2023:poi/ete_2021={driade=true,zoglin=true},halloween2023:epreuve/ete_2021=false}] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Cette grosse fleur semble liée à d'autres fleurs dans la zone. Essaye d'affaiblir ces dernières et reviens ici !","color":"#C5CDB5","bold":false}]

execute as @s if entity @s[advancements={halloween2023:poi/ete_2021={driade=true,zoglin=true},halloween2023:epreuve/ete_2021=true}] run function halloween2023:poi/ete_2021/epreuve1 
