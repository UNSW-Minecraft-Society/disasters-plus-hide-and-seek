give @a[team=players] minecraft:salmon 64
kill @e[type=item,nbt={Item:{id:"minecraft:salmon"}}]

execute if entity @e[tag=loopsalmon] run schedule function carld:d/salmonloop 1s