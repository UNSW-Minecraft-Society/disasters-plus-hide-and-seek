execute as @a at @s run tp @s ~ ~-6 ~
execute if entity @e[tag=loopsixunder] run schedule function carld:disasters/disaster/sixunder/activate 60s
