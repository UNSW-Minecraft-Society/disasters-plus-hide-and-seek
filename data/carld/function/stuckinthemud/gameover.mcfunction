title @a title "GAME OVER"

schedule clear carld:stuckinthemud/timer
schedule clear carld:stuckinthemud/stuckzombificationloop
kill @e[type=marker,tag=hideandseek]
kill @e[type=item]
effect clear @a
time set day

scoreboard objectives remove game
scoreboard objectives remove dead
execute as @a run attribute @s minecraft:movement_speed base reset
execute as @a run attribute @s minecraft:jump_strength base reset
execute as @a run attribute @s minecraft:scale base reset
execute as @a run attribute @s minecraft:air_drag_modifier base reset
execute as @a run attribute @s minecraft:bounciness base reset
effect clear @a

team remove its
team remove frees
team remove stucks
gamerule reduced_debug_info false