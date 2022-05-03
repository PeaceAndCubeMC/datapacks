#reset du scoreboard oeuf et création de la bossbar sans le display (Attention, perte de tout les scores)

scoreboard objectives remove oeufs
scoreboard objectives add oeufs dummy
scoreboard objectives modify oeufs displayname {"text":"Oeufs de Pâques","color":"yellow"}

function paques2022:paliersg/palier_g_values
function paques2022:paliersp/palier_p_values