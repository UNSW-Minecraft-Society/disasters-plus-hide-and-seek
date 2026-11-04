title @a title "GAME OVER"

schedule clear carld:d/distancingloop
schedule clear carld:d/lockdownloop

#normalise attributes from disasters
execute as @a run function carld:master/reset_attributes

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