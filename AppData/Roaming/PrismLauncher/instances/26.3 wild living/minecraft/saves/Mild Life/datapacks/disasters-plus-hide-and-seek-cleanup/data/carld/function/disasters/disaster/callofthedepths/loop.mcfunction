
execute positioned ~ ~-1000 ~ as @n[team=players] run effect give @s minecraft:wither 5 1 true
execute positioned ~ ~-1000 ~ as @n[team=players] run effect clear @s minecraft:regeneration

execute if entity @e[tag=loopcallofthedepths] run schedule function carld:disasters/disaster/callofthedepths/loop 4s


