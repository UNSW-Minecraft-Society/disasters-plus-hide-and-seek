execute if score !Time! game matches 10.. as @s run team join stucks @s
execute if score !Time! game matches 10.. as @s run tellraw @s "You are now stuck in the mud! Try to get people who are free to tip you out."
execute if score !Time! game matches 10.. as @s run title @s subtitle "You are stuck!"
execute if score !Time! game matches 10.. as @s run title @s title "Tag!"
advancement revoke @s only carld:hit_by_it
