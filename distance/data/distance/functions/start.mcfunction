scoreboard players operation .temp distance = .dz distance
execute if score .dx distance > .dz distance run function distance:swap
scoreboard players operation .dz distance *= .1000 distance
scoreboard players operation .temp distance = .dz distance
execute store result score .in distance run scoreboard players operation .temp distance /= .dx distance
execute as @e[type=marker,tag=math] run function distance:math/atan
execute as @e[type=marker,tag=math] run function distance:math/sin
scoreboard players operation .dz distance *= .100 distance
execute store result score .out distance run scoreboard players operation .dz distance /= .in distance

execute if score .dy distance matches 1.. run function distance:start_2