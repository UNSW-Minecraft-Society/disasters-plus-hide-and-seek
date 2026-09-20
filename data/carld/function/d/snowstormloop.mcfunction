execute at @e[type=minecraft:marker,tag=snowstorm] run tp @e[type=minecraft:marker,tag=snowstorm] ~ ~-1 ~
execute at @e[type=minecraft:marker,tag=snowstorm] run fillbiome ~50 ~-1 ~50 ~-50 ~-1 ~-50 carld:snowstorm

execute if entity @e[tag=snowstormloop] run schedule function carld:d/snowstormloop 5t
