execute as @s unless entity @s[advancements={halloween2023:poi/ete_2021={driade=true,zoglin=true}}] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : Enfin un peu de verdure ! Je commençais à n'en plus pouvoir de cette lave et de ces atmosphères pesantes. On est dans une grotte de l'événement de l'","color":"#C5CDB5","bold":false},{"text":"Été 2021","color":"#C5CDB5","bold":true},{"text":".\nSi mes souvenirs sont bons, tu devrais trouver par ici une salle toute blanche, qui a été corrompue par un zoglin ainsi que la salle où était retenue prisonnière une dryade. Reviens me voir quand tu as tout trouvé !","color":"#C5CDB5","bold":false}]

execute as @s if entity @s[advancements={halloween2023:poi/ete_2021={driade=true,zoglin=true}}] run tellraw @s [{"text":"Bob le Bot","bold":true,"color":"#024050"},{"text":" : On peut rester ici un peu plus longtemps si tu veux, non ? Bon, pour sortir d'ici, tu devrais t'approcher de la grosse fleur en bas de la grotte.","color":"#C5CDB5","bold":false}]