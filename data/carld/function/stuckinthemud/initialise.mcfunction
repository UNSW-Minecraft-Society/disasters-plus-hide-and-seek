# Initialises the game but does not start,
# gives option to add variable numbers of its/setup other game config
tp @a @s
gamemode adventure @a
gamerule keep_inventory true
gamerule reduced_debug_info true
gamerule locator_bar true

clear @a
function carld:endchestclear

execute at @s run worldborder center ~ ~
worldborder set 200
execute at @s run setworldspawn
spawnpoint @a ~ ~ ~

effect give @a saturation 15 1

# add scoreboards
# objective for game settings (currently unused?)
scoreboard objectives add settings dummy
# game sidebar display objective (used for timer)
scoreboard objectives add game dummy
scoreboard objectives setdisplay sidebar game
scoreboard players set !Time! game 0
# objective for marking dead players for respawning effects
scoreboard objectives add dead deathCount
# objective for game state tracking
scoreboard objectives add gamestate dummy
scoreboard players set !IsStuckInTheMudInitialised! gamestate 1

team add its
team modify its friendlyFire false
team modify its nametagVisibility always
team modify its collisionRule never
team modify its color red

team add frees
team modify its friendlyFire false
team modify frees nametagVisibility always
team modify frees collisionRule never
team modify frees color aqua

team add stucks
team modify stucks friendlyFire false
team modify stucks nametagVisibility always
team modify stucks collisionRule never
team modify stucks color gold

summon marker ~ ~ ~ {Tags:["middle","stuckinthemud"]}

scoreboard objectives add dead deathCount

tellraw @s "Add people to be it using /team join its <selector>"
tellraw @s "Else defaults to one random person it"
