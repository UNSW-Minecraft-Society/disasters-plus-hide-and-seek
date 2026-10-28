# Initialises the game but does not start, gives option to add variable numbers of sardines/setup other game config

tp @a @s
gamemode adventure @a
gamerule keep_inventory true
gamerule reduced_debug_info true
gamerule locator_bar false
clear @a
execute at @s run worldborder center ~ ~
execute at @s run setworldspawn
spawnpoint @a ~ ~ ~
effect give @a saturation 15 1
worldborder set 200

function carld:endchestclear

# add scoreboards
scoreboard objectives add time dummy
scoreboard objectives add settings dummy
scoreboard objectives add game dummy
scoreboard objectives setdisplay sidebar game

# add and config teams
team add players
team modify players friendlyFire false
team modify players nametagVisibility never
team modify players collisionRule never
team add sardines
team modify sardines color aqua
team modify players color green

# lowk not using this rn
summon marker ~ ~ ~ {Tags:["middle","sardines"]}

team join players @a[tag=!admin]