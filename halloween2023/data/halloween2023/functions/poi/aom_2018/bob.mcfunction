execute as @s unless entity @s[advancements={halloween2023:poi/aom_2018={tour=true,porte_1=true,porte_2=true,porte_3=true}}] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Encore un AoM ? Celui-ci est sorti en ","color":"#C5CDB5","bold":false},{"text":"2018","color":"#C5CDB5","bold":true},{"text":".\nLes AoM ne sont jamais très grands. Je te laisse trouver les lieux importants de la zone. Reviens me voir quand tu as fini.","color":"#C5CDB5","bold":false}]

execute as @s if entity @s[advancements={halloween2023:poi/aom_2018={tour=true,porte_1=true,porte_2=true,porte_3=true}}] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Les connaissances de l'année 2018 n'ont plus de secret pour nous ! Plus qu'à sortir d'ici. J'ai repéré des changements en haut de la tour. Tu devrais essayer de t'y rendre !","color":"#C5CDB5","bold":false}]