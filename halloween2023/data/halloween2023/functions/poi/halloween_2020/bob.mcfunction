execute as @s unless entity @s[advancements={halloween2023:poi/halloween_2020={cimetiere=true,champs=true,friandise=true}}] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Allez, encore un peu d'effort et on aura fini de trier toutes les données que tu as récolté. On se trouve dans le village de Sanctuarie de ","color":"#C5CDB5","bold":false},{"text":"Halloween 2020","color":"#C5CDB5","bold":true},{"text":".\nD'après les fragments de données que tu m'as fournis, tu devrais trouver dans la zone : des champs, un cimetière et une maison aux bonbons. Je te laisser chercher ça et revenir me voir quand c'est bon !","color":"#C5CDB5","bold":false}]

execute as @s if entity @s[advancements={halloween2023:poi/halloween_2020={cimetiere=true,champs=true,friandise=true}}] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Le village de Sanctuarie et ses alentours n'ont plus de secrets pour nous ! Sortons d'ici, j'ai vu un chemin qui mène dans la forêt. Tu devrais aller voir.","color":"#C5CDB5","bold":false}]