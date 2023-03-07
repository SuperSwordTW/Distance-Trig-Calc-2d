scoreboard players operation .temp distance = .dz distance
scoreboard players operation .dz distance = .out distance
scoreboard players operation .temp distance = .dz distance
execute if score .dy distance > .dz distance run function distance:swap2
scoreboard players operation .dz distance *= .1000 distance
scoreboard players operation .temp distance = .dz distance
execute store result score .in distance run scoreboard players operation .temp distance /= .dz distance
execute as @e[tag=math] run function distance:math/atan
execute as @e[tag=math] run function distance:math/sin
scoreboard players operation .dz distance *= .100 distance
execute store result score .out distance run scoreboard players operation .dz distance /= .in distance