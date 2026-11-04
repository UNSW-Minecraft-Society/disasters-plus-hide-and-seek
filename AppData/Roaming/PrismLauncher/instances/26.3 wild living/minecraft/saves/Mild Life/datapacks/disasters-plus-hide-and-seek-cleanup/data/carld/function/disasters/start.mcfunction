tp @a @s
gamerule keep_inventory true
gamerule reduced_debug_info false
execute if score Gamemode settings matches 1 run gamemode survival @a
execute if score Gamemode settings matches 2 run gamemode adventure @a
clear @a
execute at @s align xyz run worldborder center ~ ~
execute at @s align xyz run setworldspawn
spawnpoint @a ~ ~ ~
effect give @a saturation 15 1
worldborder set 100

#set up scoreboards
scoreboard objectives add time dummy
scoreboard objectives add disasters dummy
scoreboard objectives add teams dummy
scoreboard objectives add game dummy
scoreboard objectives setdisplay sidebar game
scoreboard objectives add disasterpick dummy

team add players
team modify players friendlyFire false
team add teams
team add zombies

execute if score Mode settings matches 1 run function carld:disasters/settings/mode/basic
execute if score Mode settings matches 2 run function carld:disasters/settings/mode/remix
execute if score Mode settings matches 3 run function carld:disasters/settings/mode/chaos
execute if score Mode settings matches 4 run function carld:disasters/settings/mode/survival
execute if score Mode settings matches 5 run function carld:disasters/settings/mode/remasters
execute if score Kit settings matches 2 run function carld:master/kit/basic

function carld:endchestclear


scoreboard objectives add dead deathCount
scoreboard objectives add Disasters_RNG dummy "Disasters RNG"
team add zombies zombies
team add players players
team add teams teams

team modify players collisionRule never
team modify players color green
team modify zombies color red

team join players @a
gamemode spectator @a[team=zombies]
function carld:disasters/timetick

title @a title "Disasters!"