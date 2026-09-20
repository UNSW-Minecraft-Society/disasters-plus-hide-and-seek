scoreboard players add SafeZone game 1
kill @e[tag=dsafezone]

title @a title "Safe Zone!"
title @a subtitle "Find the glowing safe zone!"
tellraw @s "You have 60 seconds to get to the safe zone, or die!"

summon slime ~ ~ ~ {Invulnerable:1b,Glowing:1b,Team:"players",PersistenceRequired:1b,NoAI:1b,Size:0,Tags:["SafeBox"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:30000000,show_particles:0b}],attributes:[{id:"minecraft:scale",base:16}]}
spreadplayers ~ ~ 30 30 false @e[tag=SafeBox]

schedule function carld:d/safezonetrigger 60s

