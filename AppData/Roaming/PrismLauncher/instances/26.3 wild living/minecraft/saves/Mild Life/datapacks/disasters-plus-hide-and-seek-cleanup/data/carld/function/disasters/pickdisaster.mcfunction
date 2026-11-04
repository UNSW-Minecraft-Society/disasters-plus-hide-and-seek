scoreboard players reset !Time! disasters

tag @e[tag=disaster,sort=random,limit=1] add active
execute if score DisasterNumber settings matches 2 run tag @e[tag=disaster,tag=!active,sort=random,limit=1] add active

execute if entity @e[type=marker,tag=active] run say A new disaster approaches...
execute unless entity @e[type=marker,tag=active] run say No more disasters are left to appear.

execute if entity @e[tag=ddripstone,tag=active] run function carld:d/dripstone

execute if entity @e[tag=dpvp,tag=active] run function carld:d/pvp
execute if entity @e[tag=dsuperflat,tag=active] run function carld:d/superflat


execute if entity @e[tag=drapture,tag=active] run function carld:d/rapture
execute if entity @e[tag=ddistancing,tag=active] run function carld:d/distancing
execute if entity @e[tag=dlockdown,tag=active] run function carld:d/lockdown
execute if entity @e[tag=dsize,tag=active] run function carld:d/size
execute if entity @e[tag=dmusicalboats,tag=active] run function carld:d/musicalboats
execute if entity @e[tag=dgravity,tag=active] run function carld:d/gravity
execute if entity @e[tag=dsalmon,tag=active] run function carld:d/salmon
execute if entity @e[tag=dtntminecart,tag=active] run function carld:d/tntminecart
execute if entity @e[tag=dheavywind,tag=active] run function carld:d/heavywind

execute if entity @e[tag=dlethaljumps,tag=active] run function carld:d/lethaljumps
execute if entity @e[tag=dsnowstorm,tag=active] run function carld:d/snowstorm
execute if entity @e[tag=dswappage,tag=active] run function carld:d/swappage
execute if entity @e[tag=dsafezone,tag=active] run function carld:d/safezone

#floor raisers
execute if entity @e[tag=dlava,tag=active] run function carld:disasters/disaster/lava/activate
execute if entity @e[tag=dcavesmog,tag=active] run function carld:disasters/disaster/cavefog/activate
execute if entity @e[tag=dcallofthedepths,tag=active] run function carld:disasters/disaster/callofthedepths/activate

#hazards
execute if entity @e[tag=dwater,tag=active] run function carld:disasters/disaster/water/activate
execute if entity @e[tag=dgrass,tag=active] run function carld:disasters/disaster/grass/activate
execute if entity @e[tag=dtornado,tag=active] run function carld:disasters/disaster/tornado/activate

#mobs
execute if entity @e[tag=dhaunted,tag=active] run function carld:disasters/disaster/haunted/activate
execute if entity @e[tag=dwither,tag=active] run function carld:disasters/disaster/wither/activate
execute if entity @e[tag=dwarden,tag=active] run function carld:disasters/disaster/warden/activate
execute if entity @e[tag=dcreaking,tag=active] run function carld:disasters/disaster/creaking/activate
execute if entity @e[tag=dsummerwind,tag=active] run function carld:disasters/disaster/summerwind/activate
execute if entity @e[tag=dendrift,tag=active] run function carld:disasters/disaster/endrift/activate

#attribute alterations
execute if entity @e[tag=dbouncy,tag=active] run function carld:disasters/disaster/bouncy/activate
execute if entity @e[tag=dheart,tag=active] run function carld:disasters/disaster/halfhealth/activate
execute if entity @e[tag=dhumanpinball,tag=active] run function carld:disasters/disaster/humanpinball/activate

#players
execute if entity @e[tag=dsixunder,tag=active] run function carld:disasters/disaster/sixunder/activate
execute if entity @e[tag=dadminabuse,tag=active] run function carld:disasters/disaster/adminabuse/activate
execute if entity @e[tag=dphysical,tag=active] run function carld:disasters/disaster/physical/activate

