scoreboard players add MinecartRain game 1
title @a title "Minecart Rain!"
kill @e[tag=dtntminecart]

summon marker ~ ~ ~ {Tags:["looptntminecart"]}

execute at @r[team=players] run summon tnt_minecart ~ ~100 ~
schedule function carld:d/tntminecartloop 1s
