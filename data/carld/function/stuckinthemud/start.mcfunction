# Tries to call initialise if game has not been initialised
execute unless score !IsStuckInTheMudInitialised! gamestate matches 1 run function carld:sardines/initialise
execute unless score !IsStuckInTheMudInitialised! gamestate matches 1 run team join its @r
scoreboard players set !IsStuckInTheMudInitialised! gamestate 0

# Starts a game after it has been initialised
team join frees @a[tag=!admin, team=!its]

execute as @a[team=its] run attribute @s minecraft:jump_strength base set 0
execute as @a[team=its] run attribute @s minecraft:movement_speed base set 0
effect give @a[team=its] minecraft:blindness 30 1 true
effect give @a minecraft:resistance 35 100 true
give @a[team=its] rotten_flesh[ \
    custom_name=[{"text":"Rotten Flesh of Resetting","italic":false}], \
    food={can_always_eat:1b,nutrition:1,saturation:1}, \
    consumable={on_consume_effects:[{type:apply_effects, \
    effects:[{id:instant_damage,duration:300,amplifier:20}]}]} \
] 64

tellraw @a[team=frees] "You are not it! Don't get tipped by those who are it, and help free those stuck in the mud."
tellraw @a[team=its] "You are it! Tag free people to make them stuck in the mud."

function carld:stuckinthemud/timer
