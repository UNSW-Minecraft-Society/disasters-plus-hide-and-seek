title @a subtitle "The player with the lowest y value withers!"
title @a title "Call of the Depths!"

scoreboard players add CallOfDepths game 1
kill @e[tag=dcallofthedepths]
summon marker ~ ~ ~ {Tags:["loopcallofthedepths","disasterloop"]}

execute positioned ~ ~-1000 ~ as @n[team=players] run effect give @s minecraft:wither 5 1 true

schedule function carld:disasters/disaster/callofthedepths/loop 1s
