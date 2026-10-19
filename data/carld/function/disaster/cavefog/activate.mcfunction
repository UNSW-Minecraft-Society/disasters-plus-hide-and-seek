title @a title "CAVE SMOG!"
scoreboard players add CaveSmog game 1
kill @e[tag=dcavesmog]
summon marker ~ ~ ~ {Tags:["loopcavefog","disasterloop"]}

execute as @a at @s if entity @s[y=0,dy=63] run tellraw @s "You are below Y = 63! The cave fog chokes you!"
execute as @a at @s if entity @s[y=0,dy=63] run damage @s 2

schedule function carld:disaster/cavefog/loop 1s
