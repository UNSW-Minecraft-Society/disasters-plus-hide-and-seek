scoreboard players reset !Time! disasters

tag @e[tag=disaster,sort=random,limit=1] add active
execute if score DisasterNumber settings matches 2 run tag @e[tag=disaster,tag=!active,sort=random,limit=1] add active

execute if entity @e[tag=active] run say A new disaster approaches...
execute unless entity @e[tag=active] run say No more disasters are left to appear.

execute if entity @e[tag=ddripstone,tag=active] run function carld:d/dripstone
execute if entity @e[tag=dwither,tag=active] run function carld:d/wither
execute if entity @e[tag=dheart,tag=active] run function carld:d/heart
execute if entity @e[tag=dlava,tag=active] run function carld:d/lava
execute if entity @e[tag=dphysical,tag=active] run function carld:d/physical

execute if entity @e[tag=dgrass,tag=active] run function carld:d/grass
execute if entity @e[tag=dgrass,tag=active] run scoreboard players add DontTouchGrass game 1
execute if entity @e[tag=dgrass,tag=active] run title @a title "Don't Touch Grass!"
execute if entity @e[tag=dgrass,tag=active] run kill @e[tag=dgrass]

execute if entity @e[tag=dwater,tag=active] run function carld:d/water
execute if entity @e[tag=dwater,tag=active] run scoreboard players add PollutedWater game 1
execute if entity @e[tag=dwater,tag=active] run title @a title "Polluted Water!"
execute if entity @e[tag=dwater,tag=active] run kill @e[tag=dwater]

execute if entity @e[tag=dsixunder,tag=active] run function carld:d/sixunder
execute if entity @e[tag=dsixunder,tag=active] run scoreboard players add SixFeetUnder game 1
execute if entity @e[tag=dsixunder,tag=active] run title @a title "Six Feet Under!"
execute if entity @e[tag=dsixunder,tag=active] run kill @e[tag=dsixunder]

execute if entity @e[tag=dhaunted,tag=active] run function carld:d/haunted

execute if entity @e[tag=dsummerwind,tag=active] run function carld:d/summerwind
execute if entity @e[tag=dsummerwind,tag=active] run title @a title "SUMMER WIND!"
execute if entity @e[tag=dsummerwind,tag=active] run scoreboard players add SummerWind game 1
execute if entity @e[tag=dsummerwind,tag=active] run kill @e[tag=dsummerwind]

execute if entity @e[tag=dpvp,tag=active] run function carld:d/pvp
execute if entity @e[tag=dsuperflat,tag=active] run function carld:d/superflat
execute if entity @e[tag=dwarden,tag=active] run function carld:d/warden

execute if entity @e[tag=dcavesmog,tag=active] run function carld:d/cavefog

execute if entity @e[tag=drapture,tag=active] run function carld:d/rapture
execute if entity @e[tag=ddistancing,tag=active] run function carld:d/distancing
execute if entity @e[tag=dlockdown,tag=active] run function carld:d/lockdown
execute if entity @e[tag=dsize,tag=active] run function carld:d/size
execute if entity @e[tag=dadminabuse,tag=active] run function carld:d/adminabuse
execute if entity @e[tag=dmusicalboats,tag=active] run function carld:d/musicalboats
execute if entity @e[tag=dgravity,tag=active] run function carld:d/gravity
execute if entity @e[tag=dsalmon,tag=active] run function carld:d/salmon
execute if entity @e[tag=dtntminecart,tag=active] run function carld:d/tntminecart
execute if entity @e[tag=dheavywind,tag=active] run function carld:d/heavywind
execute if entity @e[tag=dcreaking,tag=active] run function carld:d/creaking

execute if entity @e[tag=dlethaljumps,tag=active] run function carld:d/lethaljumps
execute if entity @e[tag=dsnowstorm,tag=active] run function carld:d/snowstorm
execute if entity @e[tag=dswappage,tag=active] run function carld:d/swappage
execute if entity @e[tag=dendrift,tag=active] run function carld:d/endrift
execute if entity @e[tag=dsafezone,tag=active] run function carld:d/safezone