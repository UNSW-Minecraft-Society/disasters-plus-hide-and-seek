tellraw @a "SIXTY SECONDS UNTIL 6 FEET UNDER REPEATS!"
scoreboard players add SixFeetUnder game 1
title @a title "Six Feet Under!"
kill @e[tag=dsixunder]

#loop marker
summon marker ~ ~ ~ {Tags:["loopsixunder","disasterloop"]}


execute as @a at @s run tp @s ~ ~-6 ~
schedule function carld:disasters/disaster/sixunder/activate 60s
