scoreboard players add Snowstorm game 1
kill @e[tag=dsnowstorm]

summon marker ~ ~ ~ {Tags:["snowstormloop"]}

summon marker ~ 255 ~ {Tags:["snowstorm"]}
title @a title "Snowstorm!"
execute at @e[type=minecraft:marker,tag=snowstorm] run tp @e[type=minecraft:marker,tag=snowstorm] ~ ~1 ~
execute at @e[type=minecraft:marker,tag=snowstorm] run fillbiome ~50 ~-1 ~50 ~-50 ~-1 ~-50 carld:snowstorm

weather rain 1d

schedule function carld:d/snowstormloop 5t
schedule function carld:d/snowstormmobloop 5t
