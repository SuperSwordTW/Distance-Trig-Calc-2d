execute store result entity @s Rotation[0] float 0.001 run scoreboard players get .out distance
execute at @s run tp ^ ^ ^1
execute store result score .in distance run data get entity @s Pos[0] 1000.0
tp @s 0.0 0.0 0.0
execute if score .in distance matches ..0 run scoreboard players operation .in distance *= .-1 distance