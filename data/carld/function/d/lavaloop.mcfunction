execute at @e[type=minecraft:interaction,tag=lava] run tp @e[type=minecraft:interaction,tag=lava] ~ ~1 ~
execute at @e[type=minecraft:interaction,tag=lava] run fill ~50 ~-1 ~50 ~-50 ~-1 ~-50 lava

schedule function carld:d/lavaloop 1s
