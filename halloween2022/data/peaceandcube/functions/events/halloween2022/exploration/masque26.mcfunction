execute if entity @s[advancements={peaceandcube:events/exploration_halloween_2022={26=true}}] run tellraw @s [{"text":"Masque déjà récupéré.","color":"#934C47"}]

execute if entity @s[advancements={peaceandcube:events/exploration_halloween_2022={26=false}}] run scoreboard players add @s hallo_masque_glace 1
execute if entity @s[advancements={peaceandcube:events/exploration_halloween_2022={26=false}}] run tellraw @s [{"text":"+1 masque ☠","color":"#934C47"}]
execute if entity @s[advancements={peaceandcube:events/exploration_halloween_2022={26=false}}] at @s run playsound minecraft:block.note_block.iron_xylophone ambient @s ~ ~ ~ 10 1
execute if entity @s[advancements={peaceandcube:events/exploration_halloween_2022={26=false}}] run advancement grant @s only peaceandcube:events/exploration_halloween_2022 26