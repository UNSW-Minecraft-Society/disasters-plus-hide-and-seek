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
team add zombies
team modify zombies color red
team modify players color green

summon marker ~ ~ ~ {Tags:["middle"]}


scoreboard objectives add dead deathCount
team add zombies zombies
team add players players
team add teams teams
team join players @a

team join zombies @r[team=players]

attribute @a[team=zombies,limit=1,sort=random] minecraft:jump_strength base set 0
attribute @a[team=zombies,limit=1,sort=random] minecraft:movement_speed base set 0
effect give @a[team=zombies] minecraft:blindness 60 1 true
effect give @a minecraft:resistance 65 100 true
give @a[team=zombies] netherite_sword[custom_name=[{"text":"Seeking Stick","italic":false}],lore=[[{"text":"Go find the remaining hiders!","italic":false}]],enchantments={sharpness:100}]
give @a[team=zombies] rotten_flesh[custom_name=[{"text":"Rotten Flesh of Resetting","italic":false}],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={on_consume_effects:[{type:apply_effects,effects:[{id:instant_damage,duration:300,amplifier:20}]}]}] 64

function carld:hideandseek/timer
