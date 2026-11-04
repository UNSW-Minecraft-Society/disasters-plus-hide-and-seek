clear @s
give @s stone_sword 1
give @s diamond_pickaxe 1
give @s stone_axe 1
give @s stone_shovel 1
give @s stone_hoe 1
give @s carrot 16
give @s golden_carrot 4
item replace entity @s armor.head with zombie_head[custom_name=[{"text":"Zombie Head","italic":false}],lore=[[{"text":"You're a zombie! Go kill those living players!","italic":false}]],enchantments={binding_curse:1}]
item replace entity @s armor.chest with leather_chestplate[dyed_color=1481884,enchantments={binding_curse:1},unbreakable={}]
item replace entity @s armor.legs with leather_leggings[dyed_color=3949738,enchantments={binding_curse:1},unbreakable={}]
item replace entity @s armor.feet with leather_boots[dyed_color=1908001,enchantments={binding_curse:1},unbreakable={}]

function carld:master/reset_attributes
effect give @s minecraft:fire_resistance infinite 1 true