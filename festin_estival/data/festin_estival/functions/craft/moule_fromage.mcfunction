execute if entity @s[advancements={festin_estival:deblocage/fromage=true}] positioned ~ ~1.6 ~ if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:potion",tag:{Tags:["fe23_bouteille_lait"]}}},sort=nearest,limit=1] if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:brown_mushroom"}},sort=nearest,limit=1] run function festin_estival:craft/moule_fromage_fromage