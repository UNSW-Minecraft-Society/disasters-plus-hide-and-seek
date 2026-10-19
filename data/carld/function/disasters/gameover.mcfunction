title @a title "GAME OVER"

schedule clear carld:d/distancingloop
schedule clear carld:d/lockdownloop

#normalise attributes from disasters
execute as @a run attribute @s minecraft:max_health base reset
execute as @a run attribute @s minecraft:scale base reset
execute as @a run attribute @s minecraft:bounciness base reset
execute as @a run attribute @s minecraft:gravity base reset
execute as @a run attribute @s minecraft:jump_strength base reset

schedule clear carld:disasters/timetick
effect clear @a

kill @e[tag=disastersummon]

# clear various markers
kill @e[type=marker,tag=disaster]
kill @e[type=marker,tag=disasterloop]

# haunted time set fix
time set day

scoreboard objectives remove time
scoreboard objectives remove disasters
scoreboard objectives remove game
scoreboard objectives remove dead
team remove zombies
team remove players
team remove teams