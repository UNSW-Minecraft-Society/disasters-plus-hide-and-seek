kill @e[tag=ddistancing]
scoreboard players add SocialDistancing game 1

title @a title "Social Distancing!"
title @a subtitle "Stay Away From Others!"

schedule function carld:d/distancingloop 2s
