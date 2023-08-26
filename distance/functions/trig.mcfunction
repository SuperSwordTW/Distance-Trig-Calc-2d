# tan^-1(a/b)
$execute positioned 0.5 0.0 0.5 facing -$(x) 0.0 $(z) run tp 0-0-0-0-1 0.5 0.0 0.5 ~ ~
execute store result storage index x int 1 run data get entity 0-0-0-0-1 Rotation[0] 100
# sin(tan^-1(a/b))
function distance:math/sin with storage index
scoreboard players operation .dx distance *= .100000 distance

execute store result score .out distance run scoreboard players operation .dx distance /= .sine distance
