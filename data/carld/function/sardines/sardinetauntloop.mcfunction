execute if predicate carld:half_chance if predicate carld:half_chance as @r[team=sardines] at @s run \
    playsound entity.salmon.flop master @a ~ ~ ~

execute if predicate carld:half_chance if predicate carld:half_chance if predicate carld:half_chance \ 
    if predicate carld:half_chance as @a[team=sardines] at @s run \
    particle splash ~ ~ ~ 1 0 1 1 12

execute if score !Time! game matches 200.. \
    if predicate carld:half_chance if predicate carld:half_chance as @a[team=sardines] at @s run \
    playsound entity.salmon.flop master @a ~ ~ ~

execute if score !Time! game matches 300.. \
    if predicate carld:half_chance if predicate carld:half_chance if predicate carld:half_chance as @a[team=sardines] at @s run \
    tellraw @r[team=players, distance=..10] "You hear the flopping of sardines nearby"

execute if score !Time! game matches 300.. \
    if predicate carld:half_chance if predicate carld:half_chance if predicate carld:half_chance as @a[team=sardines] at @s run \
    particle splash ~ ~ ~ 1 0 1 1 12

# should be ~0.78 cods spawned per sardine each game
execute if score !Time! game matches 300.. \
    if predicate carld:half_chance if predicate carld:half_chance if predicate carld:half_chance \ 
    if predicate carld:half_chance if predicate carld:half_chance if predicate carld:half_chance as @r[team=sardines] at @a run \
    summon cod ~ ~ ~

# except at the end where we just throw all the fih
execute if score !Time! game matches 450.. \
    if predicate carld:half_chance if predicate carld:half_chance as @a[team=sardines] at @s run \
    summon cod ~ ~ ~

schedule function carld:sardines/sardinetauntloop 4s