scoreboard players set .dx distance 1
scoreboard players set .dy distance 1
scoreboard players set .dz distance 1

execute if score .dz distance > .dx distance run scoreboard players operation .temp distance = .dx distance
execute if score .dz distance > .dx distance run scoreboard players operation .dx distance = .dz distance
execute if score .dz distance > .dx distance run scoreboard players operation .dz distance = .temp distance

execute store result storage input x int 1 run scoreboard players get .dx distance
execute store result storage input z int 1 run scoreboard players get .dz distance
function distance:trig_3d with storage input