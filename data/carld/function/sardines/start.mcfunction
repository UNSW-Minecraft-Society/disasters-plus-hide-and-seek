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

scoreboard objectives add time dummy
scoreboard objectives add disasters dummy
scoreboard objectives add settings dummy
scoreboard objectives add teams dummy
scoreboard objectives add game dummy
scoreboard objectives setdisplay sidebar game
scoreboard objectives add disasterpick dummy

team add players
team modify players friendlyFire false
team modify players nametagVisibility never
team modify players collisionRule never
team add teams
team add sardines
team modify sardines color aqua
team modify players color green

summon marker ~ ~ ~ {Tags:["middle"]}


scoreboard objectives add dead deathCount
team add sardines sardines
team add players players
team add teams teams
team join players @a

team join sardines @r[team=players]

attribute @a[team=players,limit=1,sort=random] minecraft:jump_strength base set 0
attribute @a[team=players,limit=1,sort=random] minecraft:movement_speed base set 0
effect give @a[team=players] minecraft:blindness 90 1 true
effect give @a minecraft:resistance 95 100 true
give @a[team=players] rotten_flesh[ \
    custom_name=[{"text":"Rotten Flesh of Resetting","italic":false}], \
    food={can_always_eat:1b,nutrition:1,saturation:1}, \
    consumable={on_consume_effects:[{type:apply_effects, \
    effects:[{id:instant_damage,duration:300,amplifier:20}]}]} \
] 64
tellraw @a[team=sardines] "You are the first sardine! Find a place to hide."
tellraw @a[team=sardines] "In 90 seconds, you will turn into a fih and the seekers will be released."

function carld:sardines/timer
