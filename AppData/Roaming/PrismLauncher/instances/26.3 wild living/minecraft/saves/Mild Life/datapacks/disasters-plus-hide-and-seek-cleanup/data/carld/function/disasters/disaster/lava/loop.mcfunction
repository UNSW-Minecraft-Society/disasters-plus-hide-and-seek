execute as @e[type=marker,tag=looplava] at @s run tp @s ~ ~1 ~
execute as @e[type=marker,tag=looplava] at @s run fill ~50 ~-1 ~50 ~0 ~-1 ~-50 lava
execute as @e[type=marker,tag=looplava] at @s run fill ~0 ~-1 ~50 ~-50 ~-1 ~-50 lava

execute if entity @e[tag=looplava] run schedule function carld:disasters/disaster/lava/loop 1s
