# Initialises the game but does not start,
# gives option to add variable numbers of sardines/setup other game config
tp @a @s
gamemode adventure @a
gamerule keep_inventory true
gamerule reduced_debug_info true
gamerule locator_bar false

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
scoreboard players set !IsSardinesInitialised! gamestate 1

execute as @a run attribute @s minecraft:movement_speed base reset
execute as @a run attribute @s minecraft:jump_strength base reset
execute as @a run attribute @s minecraft:scale base reset
execute as @a run attribute @s minecraft:air_drag_modifier base reset
execute as @a run attribute @s minecraft:bounciness base reset

# add and config teams
team add players
team modify players friendlyFire false
team modify players nametagVisibility never
team modify players collisionRule never

team add sardines
team modify sardines color aqua
team modify players color green
team modify sardines nametagVisibility hideForOtherTeams

# lowk not using this rn
summon marker ~ ~ ~ {Tags:["middle","sardines"]}

tellraw @s "Add people to be sardines using:"
tellraw @s "/team join sardines <selector>"
tellraw @s "prior to game start."
