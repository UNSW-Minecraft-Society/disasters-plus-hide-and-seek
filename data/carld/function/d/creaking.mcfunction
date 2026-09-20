kill @e[tag=dcreaking]
scoreboard players add Creaking game 1

execute at @a[team=players] run summon creaking ~ ~ ~ {Invulnerable:1b,attributes:[{id:"minecraft:attack_damage",base:10},{id:"minecraft:attack_knockback",base:20}]}
summon marker ~ ~ ~ {Tags:["loopcreaking"]}

title @a title "Super Creaking!"
title @a subtitle "They stalk..."

schedule function carld:d/creakingloop 10s
