team join frees @s
tellraw @s "You are now free! Run away and free others!"
effect clear @s
effect give @s speed 5 3
effect give @s glowing 5
advancement revoke @s only carld:hit_by_free
