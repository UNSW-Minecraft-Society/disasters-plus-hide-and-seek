execute if entity @e[tag=dgrass,tag=active] run scoreboard players add DontTouchGrass game 1
execute if entity @e[tag=dgrass,tag=active] run title @a title "Don't Touch Grass!"
execute if entity @e[tag=dgrass,tag=active] run kill @e[tag=dgrass]
summon marker ~ ~ ~ {Tags:["loopgrass","disasterloop"]}

execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run damage @s 4
schedule function carld:disasters/disaster/grass/loop 1s
