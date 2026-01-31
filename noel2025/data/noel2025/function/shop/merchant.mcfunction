# Fonction avec macro
# - name : nom du marchand
# - profession : profession du marchand
# - trades : liste des trades du marchand
# Exemple : function noel2025:shop/merchant {name:"Forgeron",profession:"armorer",trades:[{maxUses:2147483647,buy{id:"firework_star"},buyB:{id:"firework_star"},sell:{id:"player_head"}}]}

$summon minecraft:villager ~ ~ ~ {CustomName:{"text":"$(name)","color":"#8FADF1","bold":true},CustomNameVisible:1b,PersistenceRequired:1b,Invulnerable:1b,CanPickUpLoot:0b,VillagerData:{profession:"$(profession)",type:"minecraft:snow",level:25},Tags:["noel2025_marchand"],Offers:{Recipes:$(trades)}}