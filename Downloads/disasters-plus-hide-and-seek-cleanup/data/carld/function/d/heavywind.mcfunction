kill @e[tag=dheavywind]
scoreboard players add HeavyWind game 1

summon marker ~ ~ ~ {Tags:["loopheavywind"]}

title @a title "Heavy Wind!"
title @a subtitle "Don't get blown away!"

schedule function carld:d/heavywindloop 1s
