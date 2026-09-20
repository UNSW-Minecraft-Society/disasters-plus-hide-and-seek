execute as @a at @p if entity @p[y=0,dy=63] run tellraw @p "You are below Y = 63! The cave fog chokes you!"
execute as @a at @p if entity @p[y=0,dy=63] run damage @p 2

schedule function carld:d/cavefogloop 1s
