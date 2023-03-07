scoreboard objectives add distance dummy
scoreboard players set .1000 distance 1000
scoreboard players set .100 distance 100
scoreboard players set .-1 distance -1
execute unless entity @e[type=marker,tag=math] run summon marker 0.0 0.0 0.0 {Tags:["math"]}