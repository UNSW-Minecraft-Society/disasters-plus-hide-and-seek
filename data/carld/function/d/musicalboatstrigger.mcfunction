execute as @a run tellraw @s "Those not in boats have been eliminated!"

execute as @a[team=players] unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:mangrove_chest_boat"}}}] run kill @s