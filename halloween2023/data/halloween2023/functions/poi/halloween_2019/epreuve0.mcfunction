execute as @s if entity @s[advancements={halloween2023:poi/halloween_2019={manoir=true,mairie=true,ferme=true},halloween2023:epreuve/halloween_2019=true}] run advancement grant @s only halloween2023:poi/halloween_2019 epreuve

execute as @s if entity @s[advancements={halloween2023:poi/halloween_2019={manoir=true,mairie=true,ferme=true}}] unless entity @s[advancements={halloween2023:poi/halloween_2019=true}] run tellraw @s [{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Quête des crânes ? Je dois les retrouver dans la zone ? Bob ! Tu devrais savoir où ils se trouvent !","color":"#C5CDB5","bold":false},{"text":"\nBob le Bot","bold":true,"color":"#024050"},{"text":" : À toute !\n","color":"#C5CDB5","bold":false},{"selector":"@s","bold":true,"color":"#61c3cb"},{"text":" : Il m'aide que quand il en a envie celui là. Bon cherchons ces crânes, ils ne devraient pas être trop loin de l'église.","color":"#C5CDB5","bold":false}]

execute as @s if entity @s[advancements={halloween2023:poi/halloween_2019=true}] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Super, t'as trouvé tous les crânes. Je savais où ils étaient mais c'était plus sympa de te laisser chercher !","color":"#C5CDB5","bold":false}]

execute as @s if entity @s[advancements={halloween2023:poi/halloween_2019=true}] run tp @s -2979.5 37 -38.5 180 0

execute as @s if entity @s[advancements={halloween2023:poi/halloween_2019=true}] run scoreboard players set @s h23_avancee 6

execute as @s if entity @s[advancements={halloween2023:poi/halloween_2019=true}] run tag @s remove h23_tp_ready