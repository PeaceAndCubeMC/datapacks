#Si joueur à l'advancements mais pas reçu le cadeau
execute if entity @s[advancements={peaceandcube:events/exploration_halloween_2022=true}] unless entity @s[tag=hallo22_explo] run tellraw @s [{"text":"Zhitabu : ","color":"#934C47"},{"text":"Tu as trouvé tous mes masques ! Ca m'impressionne beaucoup, voilà un cadeau pour te remercier !","color":"#937D7B"}]
execute if entity @s[advancements={peaceandcube:events/exploration_halloween_2022=true}] unless entity @s[tag=hallo22_explo] run give @s compass{display:{Name:'{"text":"Fétiche de l\'explorateur","color":"#4F7D52","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"Cadeau de Zhitabu pour avoir","color":"gray","bold":false,"italic":false}','{"text":"terminé la chasse aux masques","color":"gray","bold":false,"italic":false}','{"text":" "}','[{"text":"☻ ","color":"#F0E6DF","italic":false},{"text":"Exploration","color":"#937D7B","italic":false}]','{"text":"Halloween 2022","color":"#D45628","bold":false,"italic":false}']},Enchantments:[{id:"minecraft:swift_sneak",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.02,Operation:0,UUID:[I;1685117537,-366981745,-1323994677,-1851352557],Slot:"offhand"},{AttributeName:"generic.luck",Name:"generic.luck",Amount:2,Operation:0,UUID:[I;-630788408,1165379543,-1246346479,-948786476],Slot:"offhand"}]} 1
execute if entity @s[advancements={peaceandcube:events/exploration_halloween_2022=true}] unless entity @s[tag=hallo22_explo] run tag @s add hallo22_explo


#Si le joueur a l'advancements et le cadeau
execute if entity @s[advancements={peaceandcube:events/exploration_halloween_2022=true}] if entity @s[tag=hallo22_explo] run tellraw @s [{"text":"Zhitabu : ","color":"#934C47"},{"text":"Maintenant, tu connais l'île comme ta poche !","color":"#937D7B"}]


#Si le joueur n'a pas l'advancements
execute if entity @s[advancements={peaceandcube:events/exploration_halloween_2022=false},scores={hallo_masque_surface=0..}] run tellraw @s [{"text":"Zhitabu :","color":"#934C47"},{"text":" Alors ? Voyons combien de masques tu as trouvé :","color":"#937D7B"},{"text":"\n"},{"text":"Surface : ","color":"dark_green"},{"score":{"name":"@s","objective":"hallo_masque_surface"},"bold":true,"color":"dark_green"},{"text":"/9","bold":true,"color":"dark_green"},{"text":"\n"},{"text":"Grotte minière : ","color":"#79565E"},{"score":{"name":"@s","objective":"hallo_masque_chocolat"},"bold":true,"color":"#79565E"},{"text":"/3","bold":true,"color":"#79565E"},{"text":"\n"},{"text":"Grotte végétale : ","color":"green"},{"score":{"name":"@s","objective":"hallo_masque_vegetal"},"bold":true,"color":"green"},{"text":"/4","bold":true,"color":"green"},{"text":"\n"},{"text":"Champigrotte : ","color":"dark_purple"},{"score":{"name":"@s","objective":"hallo_masque_champi"},"bold":true,"color":"dark_purple"},{"text":"/5","bold":true,"color":"dark_purple"},{"text":"\n"},{"text":"Grotte de glace : ","color":"aqua"},{"score":{"name":"@s","objective":"hallo_masque_glace"},"bold":true,"color":"aqua"},{"text":"/5","bold":true,"color":"aqua"},{"text":"\n"},{"text":"Chambre magmatique : ","color":"red"},{"score":{"name":"@s","objective":"hallo_masque_lave"},"bold":true,"color":"red"},{"text":"/5","bold":true,"color":"red"}]


#Premier contact (pas le film)
execute if entity @s[advancements={peaceandcube:events/exploration_halloween_2022=false}] unless score @s hallo_masque_surface matches 0.. run tellraw @s [{"text":"Zhitabu :","color":"#934C47"},{"text":" Haha, tu m'as trouvé ! Tu as l'air d'être fort à ce jeu donc j'ai un défi pour toi !!\nJ'ai caché 31 masques partout sur cette île. Je te défie de tous les retrouver !\nOh ! Regarde sur le mur juste ici, j'en avais caché un, mais tu l'as déjà trouvé ! Appuie sur le bouton pour le valider. Bon courage !","color":"#937D7B"}]


#Initialisation des scores
execute unless score @s hallo_masque_surface matches 0.. run scoreboard players set @s hallo_masque_vegetal 0
execute unless score @s hallo_masque_surface matches 0.. run scoreboard players set @s hallo_masque_champi 0
execute unless score @s hallo_masque_surface matches 0.. run scoreboard players set @s hallo_masque_glace 0
execute unless score @s hallo_masque_surface matches 0.. run scoreboard players set @s hallo_masque_lave 0
execute unless score @s hallo_masque_surface matches 0.. run scoreboard players set @s hallo_masque_chocolat 0
execute unless score @s hallo_masque_surface matches 0.. run scoreboard players set @s hallo_masque_surface 0


#Commande à mettre dans le command_block de chaque hallo_masque
#minecraft:execute as @p[distance=..5] if score @s hallo_masque_surface matches 0.. run advancement grant @s only peaceandcube:events/exploration_halloween_2022 X