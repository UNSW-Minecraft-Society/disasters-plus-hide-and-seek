kill @e[tag=dtornado]
scoreboard players add Tornado game 1

scoreboard objectives remove TornadoX
scoreboard objectives remove TornadoZ

scoreboard objectives add TornadoX dummy
scoreboard objectives add TornadoZ dummy

summon marker ~ ~ ~ {Tags:["tornado","looptornado","disasterloop"]}

title @a subtitle "Stay out of its way!"
title @a title "Tornado!"

schedule function carld:disasters/disaster/tornado/loop 1s
