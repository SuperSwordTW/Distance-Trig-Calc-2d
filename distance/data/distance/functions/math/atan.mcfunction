execute store result entity @s Pos[0] double 0.001 run scoreboard players get .in distance



 execute at @s positioned ~ 0.0 1.0 facing 0.0 0.0 0.0 rotated ~180 ~ run tp @s ~ ~ ~ ~ ~
 execute store result score .out distance run data get entity @s Rotation[0] 1000.0

# execute at @s positioned ~ 0.0 1.0 facing 0.0 0.0 0.0 rotated ~180 ~ store result score .out distance run data get entity @s Rotation[0] 1000.0

tp @s 0.0 0.0 0.0
execute if score .out distance matches ..0 run scoreboard players operation .out distance *= .-1 distance