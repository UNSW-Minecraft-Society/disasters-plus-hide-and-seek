summon frostbite ~ ~ ~ {HasVisualFire:1b,Invulnerable:1b,CustomNameVisible:1b,Team:"zombies",PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["hailstormsummon","disastersummon"],CustomName:{"bold":true,"color":"blue","shadow_color":-11141121,"text":"Frosty's Minion"},equipment:{head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:dyed_color":3847130}},mainhand:{id:"minecraft:ice_ball",count:1},offhand:{id:"minecraft:fire_charge",count:1}},active_effects:[{id:"minecraft:glowing",amplifier:1,duration:-1,show_particles:0b}]}

# Recurse until minionspawns loopcounter == 0
scoreboard players remove minionspawns loopcounter 1
execute if score minionspawns loopcounter matches 1.. run function carld:disaster/hailstorm/internalspawnminions
