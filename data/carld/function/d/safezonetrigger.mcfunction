execute as @a run tellraw @s "Those not in the safe zone have been eliminated!"

execute as @a[team=players] at @s unless entity @e[tag=SafeBox,distance=..10] run kill @s