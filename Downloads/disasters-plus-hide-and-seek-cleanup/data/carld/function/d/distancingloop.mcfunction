execute at @a[team=players] as @p if entity @a[team=players,distance=0.05..5] run damage @s 3
schedule function carld:d/distancingloop 1s
