title @a title "GAME OVER"

schedule clear carld:d/lavaloop
schedule clear carld:d/water
schedule clear carld:d/grass
schedule clear carld:d/sixunder
schedule clear carld:d/summerwind
schedule clear carld:d/cavefog
schedule clear carld:d/distancingloop
schedule clear carld:d/lockdownloop


execute as @a run attribute @s minecraft:max_health base reset
execute as @a run attribute @s minecraft:scale base reset
execute as @a run attribute @s minecraft:bounciness base reset
execute as @a run attribute @s minecraft:gravity base reset
execute as @a run attribute @s minecraft:jump_strength base reset

schedule clear carld:disasters/timetick
effect clear @a
kill @e[type=wither]
kill @e[type=warden]
kill @e[type=slime]
kill @e[type=marker]
kill @e[type=ghast]
kill @e[type=phantom]
kill @e[type=blaze]
kill @e[type=breeze]
time set day

scoreboard objectives remove time
scoreboard objectives remove disasters
scoreboard objectives remove game
scoreboard objectives remove dead
team remove zombies
team remove players
team remove teams