tellraw @a "SIXTY SECONDS UNTIL THE SUMMER WIND UNDER REPEATS!"

kill @e[type=breeze]
kill @e[type=blaze]

execute as @a at @p run summon breeze ~-5 ~20 ~-5 {Glowing:1b,CustomNameVisible:1b,Passengers:[{id:"minecraft:blaze",Glowing:1b,CustomName:"Summer Wind"}],CustomName:"Summer Wind"}
execute as @a at @p run summon blaze ~5 ~20 ~5 {Glowing:1b,CustomNameVisible:1b,Passengers:[{id:"minecraft:breeze",Glowing:1b,CustomName:"Summer Wind"}],CustomName:"Summer Wind"}

schedule function carld:d/summerwind 60s
