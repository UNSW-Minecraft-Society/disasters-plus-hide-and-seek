scoreboard players add LavaRising game 1
kill @e[tag=dlava]

summon interaction ~ -63 ~ {Tags:["lava"]}
title @a title "Lava Rises!"
execute at @e[type=minecraft:interaction,tag=lava] run tp @e[type=minecraft:interaction,tag=lava] ~ ~1 ~
execute at @e[type=minecraft:interaction,tag=lava] run fill ~50 ~-1 ~50 ~-50 ~-1 ~-50 lava

schedule function carld:d/lavaloop 2s
