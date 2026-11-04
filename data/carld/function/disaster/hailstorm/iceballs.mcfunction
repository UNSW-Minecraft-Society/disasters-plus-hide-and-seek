# Choose 5 random players. For each, roll 10% chance to summon hail above them.
execute as @a[team=players, sort=random, limit=5] if predicate carld:tenth_chance at @s positioned ~ ~30 ~ run summon minecraft:ice_ball ~ ~ ~ {Motion: [0, -2, 0]}
execute if entity @e[tag=hailstorm] run schedule function carld:disaster/hailstorm/iceballs 2t

# possible improvement: spreadplayer ice ball so it doesn't just fall directly above player?