kill @e[tag=dsalmon]
scoreboard players add SalmonGod game 1

summon salmon ~ ~ ~ {Invulnerable:1b,attributes:[{id:"minecraft:scale",base:5}]}
summon marker ~ ~ ~ {Tags:["loopsalmon","disasterloop"]}

title @a title "He Rises!"
title @a subtitle "Praise the Salmon God!"

schedule function carld:disasters/disaster/salmongod/loop 1s
