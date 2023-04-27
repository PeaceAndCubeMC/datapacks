execute unless entity @s[tag=paques2023_q2_pre] unless entity @s[tag=paques2023_q2] if entity @s[advancements={paques2023:portrait_robot=false}] run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Edgar Diendenuit","color":"#54A448"},{"text":"]","color":"gray"},{"text":" S'il y a le moindre problème sur l'île, dis-le moi.","color":"#FFFCB9"}]

execute if entity @s[advancements={paques2023:vol_a_etalage=true}] if entity @s[advancements={paques2023:en_etat_arrestation=true}] run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Edgar Diendenuit","color":"#54A448"},{"text":"]","color":"gray"},{"text":" S'il y a le moindre problème sur l'île, dis-le moi.","color":"#FFFCB9"}]

execute if entity @s[tag=paques2023_q2] run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Edgar Diendenuit","color":"#54A448"},{"text":"]","color":"gray"},{"text":" Fais le tour du village et demande aux habitants s'ils ont vu l'homme sur la photo.","color":"#FFFCB9"}]

execute if entity @s[tag=paques2023_q2_pre] run tellraw @s ["",{"text":"[","color":"gray"},{"selector":"@s","color":"#54A448"},{"text":"]","color":"gray"},{"text":" Sarah Griculteur s'est faite volée ses carottes dans la nuit !","color":"#FFFCB9"}]
execute if entity @s[tag=paques2023_q2_pre] run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Edgar Diendenuit","color":"#54A448"},{"text":"]","color":"gray"},{"text":" Oui, je me trouvais à proximité. J'ai pu prendre le voleur en photo, en voici un exemplaire.","color":"#FFFCB9"}]
execute if entity @s[tag=paques2023_q2_pre] run advancement grant @s only paques2023:portrait_robot

execute if entity @s[advancements={paques2023:toujours_a_ecoute=true}] if entity @s[advancements={paques2023:vol_a_etalage=false}] run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Edgar Diendenuit","color":"#54A448"},{"text":"]","color":"gray"},{"text":" Trouve le voleur et récupère les carottes !","color":"#FFFCB9"}]

execute if entity @s[advancements={paques2023:vol_a_etalage=true}] if entity @s[advancements={paques2023:en_etat_arrestation=false}] if entity @s[tag=paques2023_q2_fin] run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Edgar Diendenuit","color":"#54A448"},{"text":"]","color":"gray"},{"text":" Je vois que tu as récupéré les carottes, merci ! J'ai également trouvé cet objet près du voleur, prends le !","color":"#FFFCB9"}]
execute if entity @s[advancements={paques2023:vol_a_etalage=true}] if entity @s[advancements={paques2023:en_etat_arrestation=false}] if entity @s[tag=paques2023_q2_fin] run advancement grant @s only paques2023:en_etat_arrestation