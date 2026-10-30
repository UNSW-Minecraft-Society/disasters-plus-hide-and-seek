scoreboard players add !Time! game 1

execute if score !Time! game matches 30.. as @a[team=its] run attribute @s minecraft:movement_speed base reset
execute if score !Time! game matches 30.. as @a[team=its] run attribute @s minecraft:jump_strength base reset
execute if score !Time! game matches 30.. as @a[team=stucks] run attribute @s minecraft:movement_speed base set 0

effect give @a[team=its] minecraft:glowing infinite 1 true
effect give @a[team=stucks] minecraft:glowing infinite 1 true
effect give @a[team=stucks] minecraft:resistance 5 100 true

execute as @a[scores={dead=1}] \
    run give @a[scores={dead=1}, team=players] rotten_flesh[ \
        custom_name=[{"text":"Rotten Flesh of Resetting","italic":false}], \
        food={can_always_eat:1b,nutrition:1,saturation:1}, \
        consumable={on_consume_effects:[{type:apply_effects,effects:[{id:instant_damage,duration:300,amplifier:20}]}]} \
    ] 64
execute as @a[scores={dead=1}] run scoreboard players set @s dead 0
gamemode adventure @a[team=zombies]

schedule function carld:stuckinthemud/timer 1s

execute unless entity @a[team=frees] run function carld:stuckinthemud/gameover
execute if score !Time! game matches 500.. run function carld:stuckinthemud/gameover
