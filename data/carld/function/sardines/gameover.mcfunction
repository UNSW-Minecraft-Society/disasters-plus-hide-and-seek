title @a title "GAME OVER"

schedule clear carld:sardines/timer
tag @e remove winnerwinnerchickendinner
kill @e[type=marker]
kill @e[type=item]
effect clear @a
time set day

scoreboard objectives remove time
scoreboard objectives remove disasters
scoreboard objectives remove game
scoreboard objectives remove dead
team remove sardines
team remove players
team remove teams
gamerule reduced_debug_info false