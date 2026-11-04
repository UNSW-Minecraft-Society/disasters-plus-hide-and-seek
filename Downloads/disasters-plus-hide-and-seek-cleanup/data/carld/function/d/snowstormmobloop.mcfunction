summon stray ~ ~ ~ {Tags:["disastermob","unspreadmob"],equipment:{head:{id:"minecraft:diamond_helmet",count:1}},drop_chances:{head:0.000}}

spreadplayers ~ ~ 50 50 false @e[tag=unspreadmob]

tag @e remove unspreadmob

execute if entity @e[tag=snowstormloop] run schedule function carld:d/snowstormmobloop 2s
