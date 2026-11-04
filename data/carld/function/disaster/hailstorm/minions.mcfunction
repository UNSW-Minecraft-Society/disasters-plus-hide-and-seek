scoreboard objectives add loopcounter dummy

# summon and spread this many minions
scoreboard players set minionspawns loopcounter 20
function carld:disaster/hailstorm/internalspawnminions

spreadplayers ~ ~ 5 100 false @e[tag=hailstormsummon]