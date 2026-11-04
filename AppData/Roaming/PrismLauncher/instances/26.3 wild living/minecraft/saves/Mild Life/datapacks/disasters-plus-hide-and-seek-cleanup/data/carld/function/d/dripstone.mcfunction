scoreboard players add DripstoneRain game 1
title @a title "Dripstone Rain!"
kill @e[tag=ddripstone]

summon marker ~ ~ ~ {Tags:["loopdripstone"]}

execute at @r[team=players] run summon falling_block ~ ~10 ~ {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{vertical_direction:"down"}},Time:1,HurtEntities:true,FallHurtMax:40,FallHurtAmount:2f}
schedule function carld:d/dripstoneloop 1s
