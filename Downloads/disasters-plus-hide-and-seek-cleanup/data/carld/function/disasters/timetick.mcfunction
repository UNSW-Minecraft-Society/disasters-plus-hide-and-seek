scoreboard players add !Time! game 1
scoreboard players add !Time! disasters 1


#runs disaster at interval depending on settings needs updating
execute if score Speed settings = !Time! disasters run function carld:disasters/pickdisaster

#turn dead players into zombies
execute as @a[scores={dead=1}] run team join zombies @s
execute if score DeathMode settings matches 2 as @a[scores={dead=1}] run function carld:master/kit/zombie
execute as @a[scores={dead=1}] run scoreboard players set @s dead 0


execute if score DeathMode settings matches 1 run gamemode spectator @a[team=zombies]

#tick disasters
schedule function carld:disasters/timetick 1s

#check for wincon
execute if score Victor settings matches 1 unless entity @a[team=players] run function carld:disasters/gameover
scoreboard players set players teams 0
execute if score Victor settings matches 2 as @a[team=players] run scoreboard players add players teams 1
execute if score players teams matches 1 run tellraw @a {"selector":"@a[team=players]"}
execute if score players teams matches 1 run function carld:disasters/gameover
