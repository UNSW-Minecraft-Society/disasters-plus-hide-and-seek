scoreboard players add LavaRising game 1
kill @e[tag=dlava]

summon marker ~ -63 ~ {Tags:["looplava","disasterloop"]}
title @a title "Lava Rises!"
execute as @e[type=marker,tag=looplava] at @s run tp @s ~ ~1 ~
execute as @e[type=marker,tag=looplava] at @s run fill ~50 ~-1 ~50 ~-50 ~-1 ~-50 lava

schedule function carld:disaster/lava/loop 2s
