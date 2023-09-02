scoreboard players set .swap distance 0
execute if score .dz distance > .dx distance run scoreboard players operation .dz distance >< .dx distance

execute store result storage input x int 1 run scoreboard players get .dx distance
execute store result storage input z int 1 run scoreboard players get .dz distance
function distance:trig with storage input
