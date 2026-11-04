# Choose 3 random players. For each, roll 50% chance to summon lightning in front of them.
execute as @a[team=players, sort=random, limit=3] if predicate carld:half_chance at @s positioned ^ ^ ^6 run summon minecraft:lightning_bolt
execute if entity @e[tag=hailstorm] run schedule function carld:disaster/hailstorm/thunderbolts 3s