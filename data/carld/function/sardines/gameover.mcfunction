title @a title "GAME OVER"

schedule clear carld:sardines/timer
kill @e[type=marker,tag=hideandseek]
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
execute as @a[team=players] run attribute @s minecraft:movement_speed base reset
execute as @a[team=players] run attribute @s minecraft:jump_strength base reset
execute as @a[team=sardines] run attribute @s minecraft:movement_speed base reset
execute as @a[team=sardines] run attribute @s minecraft:scale base reset
gamerule reduced_debug_info false