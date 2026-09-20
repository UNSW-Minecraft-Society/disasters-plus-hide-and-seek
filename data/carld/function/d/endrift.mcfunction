scoreboard players add EndRift game 1
kill @e[tag=dendrift]

summon marker ~ ~ ~ {Tags:["endriftloop"]}

summon marker ~ ~ ~ {Tags:["endriftspike"]}
summon marker ~ ~ ~ {Tags:["endriftspike"]}
summon marker ~ ~ ~ {Tags:["endriftspike"]}
summon marker ~ ~ ~ {Tags:["endriftspike"]}
summon marker ~ ~ ~ {Tags:["endriftspike"]}
summon marker ~ ~ ~ {Tags:["endriftplant","endrift_plant1"]}
summon marker ~ ~ ~ {Tags:["endriftplant","endrift_plant2"]}
summon marker ~ ~ ~ {Tags:["endriftplant","endrift_plant3"]}
summon marker ~ ~ ~ {Tags:["endriftplant","endrift_plant4"]}
summon marker ~ ~ ~ {Tags:["endriftplant","endrift_plant5"]}

spreadplayers ~ ~ 50 50 false @e[tag=endriftspike]
spreadplayers ~ ~ 50 50 false @e[tag=endriftplant]

execute at @e[tag=endriftspike] run place template carld:endrift_spike
execute at @e[tag=endrift_plant1] run place template carld:endrift_plant1
execute at @e[tag=endrift_plant2] run place template carld:endrift_plant2
execute at @e[tag=endrift_plant3] run place template carld:endrift_plant3
execute at @e[tag=endrift_plant4] run place template carld:endrift_plant4
execute at @e[tag=endrift_plant5] run place template carld:endrift_plant5

kill @e[tag=endriftspike]

title @a title "End Rift!"

time set night

schedule function carld:d/endriftloop 2s