# Starts a game after it has been initialised

scoreboard objectives add dead deathCount
team modify sardines nametagVisibility hideForOtherTeams

team join sardines @r[team=players]

execute as @a[team=players] run attribute @s minecraft:jump_strength base set 0
execute as @a[team=players] run attribute @s minecraft:movement_speed base set 0
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

tellraw @a[team=players] "You are a player! In 90 seconds you will be released to find the sardines."
tellraw @a[team=players] "Once you find them, attack to join their team and hide from other seekers."

# main game loop
function carld:sardines/timer
# sparser loop for sardine tells/taunts
function carld:sardines/sardinetauntloop
