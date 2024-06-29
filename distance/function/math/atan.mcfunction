execute if score .tdx distance matches 6001.. run return run data modify storage index x set value 8950
execute if score .dz distance matches 0 run return run data modify storage index x set value 9000

execute store result storage index tan int 1 run scoreboard players get .tdx distance
function distance:math/atan_table with storage index