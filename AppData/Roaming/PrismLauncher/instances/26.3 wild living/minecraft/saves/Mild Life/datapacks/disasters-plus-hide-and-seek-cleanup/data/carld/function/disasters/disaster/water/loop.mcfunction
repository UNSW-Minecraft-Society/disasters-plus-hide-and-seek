execute as @a at @s if block ~ ~-1 ~ minecraft:water run damage @s 2
execute as @a at @s if block ~ ~ ~ minecraft:water run damage @s 2

execute if entity @e[tag=loopwater] run schedule function carld:disasters/disaster/water/loop 1s
