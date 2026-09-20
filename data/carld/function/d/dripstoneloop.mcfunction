execute at @r[team=players] run summon falling_block ~ ~10 ~ {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{vertical_direction:"down"}},Time:1,HurtEntities:true,FallHurtMax:40,FallHurtAmount:2f}
execute if entity @e[tag=loopdripstone] run schedule function carld:d/dripstoneloop 3s
