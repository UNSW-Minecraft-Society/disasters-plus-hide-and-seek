scoreboard players add !Time! game 1

execute if score !Time! game matches 60 as @a[team=zombies] run attribute @s minecraft:movement_speed base reset
execute if score !Time! game matches 60 as @a[team=zombies] run attribute @s minecraft:jump_strength base reset

effect give @a[team=zombies] minecraft:glowing infinite 1 true
effect give @a[team=players] minecraft:weakness infinite 100 true

execute as @a[scores={dead=1}] run team join zombies @s
execute as @a[scores={dead=1}] run give @a[scores={dead=1}] netherite_sword[custom_name=[{"text":"Seeking Stick","italic":false}],lore=[[{"text":"Go find the remaining hiders!","italic":false}]],enchantments={sharpness:100}]
execute as @a[scores={dead=1}] run give @a[scores={dead=1}] rotten_flesh[custom_name=[{"text":"Rotten Flesh of Resetting","italic":false}],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={on_consume_effects:[{type:apply_effects,effects:[{id:instant_damage,duration:300,amplifier:20}]}]}]
execute as @a[scores={dead=1}] run title @s title "You are a Seeker!"
execute as @a[scores={dead=1}] run scoreboard players set @s dead 0
gamemode adventure @a[team=zombies]

schedule function carld:hideandseek/timer 1s

execute if score !Time! game matches 300 run title @a title "REACH MIDDLE TO WIN!"
execute if score !Time! game matches 300 run summon slime ~ ~ ~ {Invulnerable:1b,Glowing:1b,Team:"players",PersistenceRequired:1b,NoAI:1b,Size:20,Tags:["SafeBox"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:30000000,show_particles:0b}]}
execute if score !Time! game matches 300 run worldborder set 10 240s

execute as @n[tag=middle] as @a[distance=..10, team=players] if score !Time! game matches 300.. if entity @e[distance=..10,tag=middle] run gamemode spectator
execute as @n[tag=middle] as @a[distance=..10, team=players] if score !Time! game matches 300.. if entity @e[distance=..10,tag=middle] run tag @s add winnerwinnerchickendinner
execute as @n[tag=middle] as @a[distance=..10, team=players] if score !Time! game matches 300.. if entity @e[distance=..10,tag=middle] run say I won!
execute as @n[tag=middle] as @a[distance=..10, team=players] if score !Time! game matches 300.. if entity @e[distance=..10,tag=middle] run team leave @s

execute unless entity @a[team=players] run function carld:hideandseek/gameover

