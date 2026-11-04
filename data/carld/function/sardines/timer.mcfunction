# increment timer by 1
scoreboard players add !Time! game 1

# players released after timer hits 90
execute if score !Time! game matches 90.. as @a[team=players] run attribute @s minecraft:movement_speed base reset
execute if score !Time! game matches 90.. as @a[team=players] run attribute @s minecraft:jump_strength base reset
execute if score !Time! game matches 90.. as @a[team=players] run effect clear @s
# sardines slowed down after timer hits 90
execute if score !Time! game matches 90.. as @a[team=sardines] run attribute @s minecraft:movement_speed base set 0
execute if score !Time! game matches 90.. as @a[team=sardines] run attribute @s minecraft:scale base set 0.6
execute if score !Time! game matches 90.. as @a[team=sardines] run attribute @s minecraft:air_drag_modifier base set 6
execute if score !Time! game matches 90.. as @a[team=sardines] run attribute @s minecraft:bounciness base set 0.4

advancement revoke @a only carld:hit_sardine

effect give @a[team=sardines] minecraft:weakness infinite 100 true
effect give @a[team=sardines] minecraft:regeneration infinite 1 true

execute as @a[scores={dead=1}] \
    run give @a[scores={dead=1}, team=players] rotten_flesh[ \
        custom_name=[{"text":"Rotten Flesh of Resetting","italic":false}], \
        food={can_always_eat:1b,nutrition:1,saturation:1}, \
        consumable={on_consume_effects:[{type:apply_effects,effects:[{id:instant_damage,duration:300,amplifier:20}]}]} \
    ] 64
execute as @a[scores={dead=1}] run scoreboard players set @s dead 0

# retrigger this loop every second
schedule function carld:sardines/timer 1s

execute unless entity @a[team=players] run function carld:sardines/gameover
execute if score !Time! game matches 300.. run function carld:sardines/gameover
