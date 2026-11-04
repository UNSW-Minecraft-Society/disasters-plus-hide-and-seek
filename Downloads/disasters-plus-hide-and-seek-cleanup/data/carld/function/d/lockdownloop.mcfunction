execute as @a[team=players] at @s unless entity @e[type=marker,tag=lockdownhouse,distance=..8] run damage @s 2
schedule function carld:d/lockdownloop 1s
