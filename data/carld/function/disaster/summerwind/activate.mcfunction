tellraw @a "SIXTY SECONDS UNTIL THE SUMMER WIND UNDER REPEATS!"

title @a title "SUMMER WIND!"
scoreboard players add SummerWind game 1
kill @e[tag=dsummerwind]

kill @e[type=breeze,team=zombies]
kill @e[type=blaze,team=zombies]

summon marker ~ ~ ~ {Tags:["loopsummerwind","disasterloop"]}

execute as @a at @p run summon breeze ~-5 ~20 ~-5 {Glowing:1b,CustomNameVisible:1b,Passengers:[{id:"minecraft:blaze",Glowing:1b,CustomName:"Summer Wind",Tags:["disastersummon"],Team:"zombies"}],CustomName:"Summer Wind",Tags:["disastersummon"],Team:"zombies"}

execute as @a at @p run summon blaze ~-5 ~20 ~-5 {Glowing:1b,CustomNameVisible:1b,Passengers:[{id:"minecraft:breeze",Glowing:1b,CustomName:"Summer Wind",Tags:["disastersummon"],Team:"zombies"}],CustomName:"Summer Wind",Tags:["disastersummon"],Team:"zombies"}

schedule function carld:disaster/summerwind/loop 60s
