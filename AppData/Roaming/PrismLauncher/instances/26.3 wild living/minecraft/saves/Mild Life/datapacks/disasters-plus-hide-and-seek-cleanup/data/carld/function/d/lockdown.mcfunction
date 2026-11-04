kill @e[tag=dlockdown]
scoreboard players add Lockdown game 1

execute at @a[team=players] run place template carld:lockdownhouse ~-4 ~-2 ~-5
execute at @a[team=players] run summon marker ~ ~ ~ {Tags:["lockdownhouse"]}

title @a title "Lockdown!"
title @a subtitle "Stay In The Houses!"



schedule function carld:d/lockdownloop 1s
