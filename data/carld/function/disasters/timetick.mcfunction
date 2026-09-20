scoreboard players add !Time! game 1
scoreboard players add !Time! disasters 1

execute if score Speed settings matches 1 if score !Time! disasters matches 60 run function carld:disasters/pickdisaster
execute if score Speed settings matches 2 if score !Time! disasters matches 30 run function carld:disasters/pickdisaster
execute if score Speed settings matches 3 if score !Time! disasters matches 15 run function carld:disasters/pickdisaster

execute as @a[scores={dead=1}] run team join zombies @s
execute if score DeathMode settings matches 2 as @a[scores={dead=1}] run function carld:kit/zombie
execute as @a[scores={dead=1}] run scoreboard players set @s dead 0


execute if score DeathMode settings matches 1 run gamemode spectator @a[team=zombies]

schedule function carld:disasters/timetick 1s

execute if score Victor settings matches 1 unless entity @a[team=players] run function carld:disasters/gameover
scoreboard players set players teams 0
execute if score Victor settings matches 2 as @a[team=players] run scoreboard players add players teams 1
execute if score players teams matches 1 run tellraw @a {"selector":"@a[team=players]"}
execute if score players teams matches 1 run function carld:disasters/gameover
