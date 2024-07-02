execute if score .tdx distance matches 6001.. run return run scoreboard players set .sine distance 999
execute if score .dz distance matches 0 run return run scoreboard players set .sine distance 1000

execute store result storage index tan int 1 run scoreboard players get .tdx distance
function distance:math/v_table with storage index
