title @a title "GAME OVER"

schedule clear carld:sardines/timer
schedule clear carld:sardines/sardinetauntloop

# lowk there's only one marker for the centre I'm not using rn
kill @e[type=marker,tag=sardines]
# clear dropped items so people don't stash stuff
kill @e[type=item]
effect clear @a
time set day

scoreboard objectives remove game

execute as @a run attribute @s minecraft:movement_speed base reset
execute as @a run attribute @s minecraft:jump_strength base reset
execute as @a run attribute @s minecraft:scale base reset
execute as @a run attribute @s minecraft:air_drag_modifier base reset
execute as @a run attribute @s minecraft:bounciness base reset
effect clear @a
effect give @a minecraft:glowing 20

team remove sardines
team remove players
gamerule reduced_debug_info false