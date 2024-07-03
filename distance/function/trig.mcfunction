
scoreboard players operation .tdx distance = .dx distance
scoreboard players operation .tdx distance *= .100 distance
scoreboard players operation .tdx distance /= .dz distance

function distance:math/v

execute store result score .out distance run scoreboard players operation .dx distance *= .sine distance
