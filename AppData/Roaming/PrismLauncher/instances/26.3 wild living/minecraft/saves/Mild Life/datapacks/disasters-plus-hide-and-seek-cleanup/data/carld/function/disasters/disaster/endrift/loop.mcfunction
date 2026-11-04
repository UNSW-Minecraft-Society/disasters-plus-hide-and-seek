execute store result score EndRift Disasters_RNG run random value 1..3

execute if score EndRift Disasters_RNG matches 1 run summon shulker ~ ~ ~ {Tags:["disastersummon","unspreadmob"]}
execute if score EndRift Disasters_RNG matches 2 run summon endermite ~ ~ ~ {Tags:["disastersummon","unspreadmob"]}
execute if score EndRift Disasters_RNG matches 3 run summon enderman ~ ~ ~ {Tags:["disastersummon","unspreadmob"]}

spreadplayers ~ ~ 50 50 false @e[tag=unspreadmob]

tag @e[tag=unspreadmob] remove unspreadmob

execute if entity @e[tag=loopendrift] run schedule function carld:disasters/disaster/endrift/loop 2s
