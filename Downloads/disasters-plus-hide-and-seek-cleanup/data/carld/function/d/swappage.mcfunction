kill @e[tag=dswappage]
scoreboard players add Swappage game 1

execute at @r[team=players] run summon marker ~ ~ ~ {Tags:["swappage1","swappagetags"]}
execute at @r[team=players] run summon marker ~ ~ ~ {Tags:["swappage2","swappagetags"]}

execute at @e[tag=swappage1] run tag @n add swappage1
execute at @e[tag=swappage2] run tag @n add swappage2

execute as @e[type=marker,tag=swappage1] at @e[type=marker,tag=swappage1] run tp @e[type=player,tag=swappage2] @s
execute as @e[type=marker,tag=swappage2] at @e[type=marker,tag=swappage2] run tp @e[type=player,tag=swappage1] @s

kill @e[type=marker,tag=swappage1]
kill @e[type=marker,tag=swappage2]
tag @e[type=player] remove swappage1
tag @e[type=player] remove swappage2

summon marker ~ ~ ~ {Tags:["loopswappage"]}

title @a title "Swappage!"
title @a subtitle "Two players swap every 30 seconds!"

schedule function carld:d/swappageloop 30s
