<<<<<<< Updated upstream
execute if score .tdx distance matches 2301.. run return run scoreboard players set .sine distance 1000
execute if score .dz distance matches 0 run return run scoreboard players set .sine distance 1

execute store result storage index tan int 1 run scoreboard players get .tdx distance
function distance:math/v_table with storage index
=======



execute if score .tdx distance matches 2301.. run return run scoreboard players set .sine distance 1000
execute if score .dz distance matches 0 run return run scoreboard players set .sine distance 1
#> if the value is too big, angle = around 90

execute store result storage input tan int 1 run scoreboard players get .tdx distance
function distance:math/v_table with storage input
>>>>>>> Stashed changes
