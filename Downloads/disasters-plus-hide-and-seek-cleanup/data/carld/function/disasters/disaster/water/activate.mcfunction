execute if entity @e[tag=dwater,tag=active] run scoreboard players add PollutedWater game 1
title @a title "Polluted Water!"
tellraw @a "Polluted Water: Water is dangerous! You'll take damage if you're inside it."
kill @e[tag=dwater]

execute as @a at @s if block ~ ~-1 ~ minecraft:water run damage @s 2
execute as @a at @s if block ~ ~ ~ minecraft:water run damage @s 2

summon marker ~ ~ ~ {Tags:["loopwater","disasterloop"]}
schedule function carld:disasters/disaster/water/loop 1s
