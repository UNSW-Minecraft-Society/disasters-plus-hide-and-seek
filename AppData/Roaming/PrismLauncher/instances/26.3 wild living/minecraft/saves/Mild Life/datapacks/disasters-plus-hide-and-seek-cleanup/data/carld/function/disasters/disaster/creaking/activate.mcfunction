kill @e[tag=dcreaking]
scoreboard players add Creaking game 1

execute at @a[team=players] run summon creaking ~ ~ ~ {Invulnerable:1b,attributes:[{id:"minecraft:attack_damage",base:10},{id:"minecraft:attack_knockback",base:20}],Team:"zombies"}
summon marker ~ ~ ~ {Tags:["loopcreaking","disasterloop"]}

title @a title "Super Creaking!"
title @a subtitle "They stalk..."

schedule function carld:disasters/disaster/creaking/loop 10s
