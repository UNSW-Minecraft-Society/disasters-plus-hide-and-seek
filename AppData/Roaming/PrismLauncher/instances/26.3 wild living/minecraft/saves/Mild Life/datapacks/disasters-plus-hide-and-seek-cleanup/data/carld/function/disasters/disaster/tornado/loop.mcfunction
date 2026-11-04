#decides if tornado will turn or have slight movement to sides
execute store result score TornadoDirection Disasters_RNG run random value 1..9

#decides if tornado will summon a breeze
execute store result score TornadoSummon Disasters_RNG run random value 1..50

#decides tornado direction if successful
execute if score TornadoDirection Disasters_RNG matches 1 run execute store result score Tornado Disasters_RNG run random value 1..4

#Move y level
execute as @n[type=marker,tag=tornado] at @s if block ~ ~-1 ~ minecraft:air run tp @s ~ ~-1 ~
execute as @n[type=marker,tag=tornado] at @s unless block ~ ~ ~ minecraft:air run tp @s ~ ~1 ~

execute if score Tornado TornadoX matches 40.. run scoreboard players set Tornado Disasters_RNG 2
execute if score Tornado TornadoX matches ..-40 run scoreboard players set Tornado Disasters_RNG 1
execute if score Tornado TornadoZ matches 40.. run scoreboard players set Tornado Disasters_RNG 4
execute if score Tornado TornadoZ matches ..-40 run scoreboard players set Tornado Disasters_RNG 3

execute as @n[type=marker,tag=tornado] at @s if score Tornado Disasters_RNG matches 1 run tp @s ~1 ~ ~
execute as @n[type=marker,tag=tornado] at @s if score Tornado Disasters_RNG matches 2 run tp @s ~-1 ~ ~
execute as @n[type=marker,tag=tornado] at @s if score Tornado Disasters_RNG matches 3 run tp @s ~ ~ ~1
execute as @n[type=marker,tag=tornado] at @s if score Tornado Disasters_RNG matches 4 run tp @s ~ ~ ~-1

execute if score Tornado Disasters_RNG matches 1 run execute as @n[tag=tornado] run scoreboard players add Tornado TornadoX 1
execute if score Tornado Disasters_RNG matches 2 run execute as @n[tag=tornado] run scoreboard players remove Tornado TornadoX 1
execute if score Tornado Disasters_RNG matches 3 run execute as @n[tag=tornado] run scoreboard players add Tornado TornadoZ 1
execute if score Tornado Disasters_RNG matches 4 run execute as @n[tag=tornado] run scoreboard players remove Tornado TornadoZ 1

execute if score TornadoDirection Disasters_RNG matches 2..3 as @n[type=marker,tag=tornado] at @s run tp @s ~0.1 ~ ~
execute if score TornadoDirection Disasters_RNG matches 4..5 as @n[type=marker,tag=tornado] at @s run tp @s ~-0.1 ~ ~
execute if score TornadoDirection Disasters_RNG matches 6..7 as @n[type=marker,tag=tornado] at @s run tp @s ~ ~ ~0.1
execute if score TornadoDirection Disasters_RNG matches 8..9 as @n[type=marker,tag=tornado] at @s run tp @s ~0.1 ~ ~0.1

execute if score TornadoSummon Disasters_RNG matches 50 as @n[type=marker,tag=tornado] at @s run summon breeze ~ ~ ~ {Tags:["disastersummon"]}

execute at @n[type=marker,tag=tornado] run function carld:disasters/disaster/tornado/tornado_visual

execute at @n[type=marker,tag=tornado] positioned ~ ~5 ~ as @e[team=!zombies,distance=..5] run effect give @s minecraft:levitation 1 20 true
execute at @n[type=marker,tag=tornado] positioned ~ ~5 ~ as @e[team=!zombies,distance=..5] run damage @s 2 minecraft:fall

execute if entity @e[tag=looptornado] run schedule function carld:disasters/disaster/tornado/loop 5t