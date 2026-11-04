summon shulker ~ ~ ~ {Tags:["disastermob","unspreadmob"]}

spreadplayers ~ ~ 50 50 false @e[tag=unspreadmob]

tag @e remove unspreadmob

execute if entity @e[tag=endriftloop] run schedule function carld:d/endriftloop 2s
