execute if score !Time! game matches 10.. \
    if predicate carld:half_chance if predicate carld:half_chance if predicate carld:half_chance \ 
    if predicate carld:half_chance if predicate carld:half_chance if predicate carld:half_chance as @r[team=stucks] run function carld:stuckinthemud/zombify

execute if score !Time! game matches 150.. \
    if predicate carld:half_chance if predicate carld:half_chance if predicate carld:half_chance \ 
    if predicate carld:half_chance if predicate carld:half_chance if predicate carld:half_chance as @r[team=stucks] run function carld:stuckinthemud/zombify

schedule function carld:stuckinthemud/stuckzombificationloop 5s