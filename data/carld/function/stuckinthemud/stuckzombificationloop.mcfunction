execute if score !Time! game matches 10.. as @a[team=stucks] run execute \
    if predicate carld:half_chance if predicate carld:half_chance if predicate carld:half_chance \ 
    if predicate carld:half_chance if predicate carld:half_chance if predicate carld:half_chance run function carld:stuckinthemud/zombify

execute if score !Time! game matches 150.. as @a[team=stucks] run execute \
    if predicate carld:half_chance if predicate carld:half_chance if predicate carld:half_chance \ 
    if predicate carld:half_chance if predicate carld:half_chance run function carld:stuckinthemud/zombify

schedule function carld:stuckinthemud/stuckzombificationloop 5s