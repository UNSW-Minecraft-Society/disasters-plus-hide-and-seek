# flop sound
execute if predicate carld:half_chance if predicate carld:half_chance as @r[team=sardines] at @s run \
    playsound entity.salmon.flop master @a ~ ~ ~

# splash particles
execute if predicate carld:half_chance if predicate carld:half_chance if predicate carld:half_chance \ 
    if predicate carld:half_chance as @a[team=sardines] at @s run \
    particle splash ~ ~ ~ 1 0 1 1 12

# flop sound but more (after timer hits 100)
execute if score !Time! game matches 100.. \
    if predicate carld:half_chance if predicate carld:half_chance as @a[team=sardines] at @s run \
    playsound entity.salmon.flop master @a ~ ~ ~

# flop flavor text to nearby players (after timer hits 150)
execute if score !Time! game matches 150.. \
    if predicate carld:half_chance if predicate carld:half_chance if predicate carld:half_chance as @a[team=sardines] at @s run \
    tellraw @r[team=players, distance=..10] "You hear the flopping of sardines nearby"

# splash particles but more (after timer hits 200)
execute if score !Time! game matches 200.. \
    if predicate carld:half_chance if predicate carld:half_chance if predicate carld:half_chance as @a[team=sardines] at @s run \
    particle splash ~ ~ ~ 1 0 1 1 12

# should be ~0.78 cods spawned per sardine each game
execute if score !Time! game matches 200.. \
    if predicate carld:half_chance if predicate carld:half_chance if predicate carld:half_chance \ 
    if predicate carld:half_chance if predicate carld:half_chance if predicate carld:half_chance as @r[team=sardines] at @a run \
    summon cod ~ ~ ~

# except at the end where we just throw all the fih
execute if score !Time! game matches 250.. \
    if predicate carld:half_chance as @a[team=sardines] at @s run \
    summon cod ~ ~ ~

schedule function carld:sardines/sardinetauntloop 3s