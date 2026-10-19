title @a title "GAME OVER"

schedule clear carld:hideandseek/timer
tag @e remove winnerwinnerchickendinner
tp @e[type=slime,tag=SafeBox] ~ -200 ~
effect clear @e[tag=SafeBox,type=slime] minecraft:glowing
kill @e[type=marker,tag=hideandseek]
kill @e[type=item]
effect clear @a
time set day

scoreboard objectives remove time
scoreboard objectives remove disasters
scoreboard objectives remove game
scoreboard objectives remove dead
team remove zombies
team remove players
team remove teams
gamerule reduced_debug_info false
gamerule locator_bar true
