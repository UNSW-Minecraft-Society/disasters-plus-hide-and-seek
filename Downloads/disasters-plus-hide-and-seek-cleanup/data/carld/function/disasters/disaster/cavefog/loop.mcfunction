execute as @a at @p if entity @p[y=0,dy=63] run tellraw @p "You are below Y = 63! The cave fog chokes you!"
execute as @a at @p if entity @p[y=0,dy=63] run damage @p 2

execute if entity @e[tag=loopcavefog] run schedule function carld:disasters/disaster/cavefog/loop 1s
