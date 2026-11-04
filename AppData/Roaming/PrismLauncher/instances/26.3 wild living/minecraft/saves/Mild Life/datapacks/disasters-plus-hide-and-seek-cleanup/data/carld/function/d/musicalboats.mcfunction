scoreboard players add MusicalBoats game 1
kill @e[tag=dmusicalboats]

title @a title "Musical Boats!"
title @a subtitle "Falling from the sky! Get in one!"
execute as @a at @s run summon mangrove_chest_boat ~ ~100 ~
tellraw @s "You have 45 seconds to get into a mangrove chest boat, or die!"

schedule function carld:d/musicalboatstrigger 45s
