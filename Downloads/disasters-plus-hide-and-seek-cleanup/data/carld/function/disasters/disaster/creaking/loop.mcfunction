tp @e[type=creaking,limit=1,sort=random] @r[team=players]
tp @e[type=creaking,limit=1,sort=random] @r[team=players]


execute if entity @e[tag=loopcreaking] run schedule function carld:disasters/disaster/creaking/loop 10s