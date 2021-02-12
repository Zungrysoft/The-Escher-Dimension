#Set the random value
scoreboard players set temp value 116
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8
execute if predicate tid:random_50 run scoreboard players add temp value 16

#Check random value against the y position
execute if score temp value > y_absolute value run setblock ~ ~ ~ polished_blackstone_brick_stairs[facing=north,half=bottom]
execute if score temp value > y_absolute value if predicate tid:random_50 run setblock ~ ~ ~ polished_blackstone_brick_stairs[facing=north,half=top]
execute if score temp value > y_absolute value if predicate tid:random_33 run setblock ~ ~ ~ polished_blackstone_brick_stairs[facing=north,half=bottom]
execute if score temp value > y_absolute value if predicate tid:random_25 run setblock ~ ~ ~ polished_blackstone_brick_stairs[facing=south,half=top]
execute if score temp value > y_absolute value if predicate tid:random_20 run setblock ~ ~ ~ polished_blackstone_brick_stairs[facing=south,half=bottom]
execute if score temp value > y_absolute value if predicate tid:random_15 run setblock ~ ~ ~ polished_blackstone_brick_stairs[facing=west,half=top]
execute if score temp value > y_absolute value if predicate tid:random_15 run setblock ~ ~ ~ polished_blackstone_brick_stairs[facing=west,half=bottom]
execute if score temp value > y_absolute value if predicate tid:random_10 run setblock ~ ~ ~ polished_blackstone_brick_stairs[facing=east,half=top]
execute if score temp value > y_absolute value if predicate tid:random_09 run setblock ~ ~ ~ polished_blackstone_brick_stairs[facing=east,half=bottom]
execute if score temp value > y_absolute value if predicate tid:random_08 run setblock ~ ~ ~ polished_blackstone_brick_slab[type=top]
execute if score temp value > y_absolute value if predicate tid:random_07 run setblock ~ ~ ~ polished_blackstone_brick_slab[type=bottom]
