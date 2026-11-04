scoreboard players add HumanPinball game 1
kill @e[tag=dhumanpinball]

title @a subtitle "Bouncy and jumpy!"
title @a title "Human Pinball!"

execute as @a run attribute @s minecraft:bounciness base set 2
execute as @a run attribute @s minecraft:jump_strength base set 2
execute as @a run attribute @s minecraft:movement_speed base set 1.2