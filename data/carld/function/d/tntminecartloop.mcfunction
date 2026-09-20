execute at @r[team=players] run summon tnt_minecart ~ ~100 ~
execute if entity @e[tag=looptntminecart] run schedule function carld:d/tntminecartloop 3s
