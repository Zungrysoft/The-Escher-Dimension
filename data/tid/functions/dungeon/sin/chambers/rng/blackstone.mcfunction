#Set the random value
scoreboard players set temp value 100
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8
execute if predicate tid:random_50 run scoreboard players add temp value 16
execute if predicate tid:random_50 run scoreboard players add temp value 32

#Check random value against the y position
execute if score temp value > y_absolute value if block ~ ~ ~ polished_blackstone_bricks run setblock ~ ~ ~ blackstone
execute if score temp value > y_absolute value if block ~ ~ ~ polished_blackstone_brick_stairs[facing=north,half=bottom] run setblock ~ ~ ~ blackstone_stairs[facing=north,half=bottom]
execute if score temp value > y_absolute value if block ~ ~ ~ polished_blackstone_brick_stairs[facing=north,half=top] run setblock ~ ~ ~ blackstone_stairs[facing=north,half=top]
execute if score temp value > y_absolute value if block ~ ~ ~ polished_blackstone_brick_stairs[facing=south,half=bottom] run setblock ~ ~ ~ blackstone_stairs[facing=south,half=bottom]
execute if score temp value > y_absolute value if block ~ ~ ~ polished_blackstone_brick_stairs[facing=south,half=top] run setblock ~ ~ ~ blackstone_stairs[facing=south,half=top]
execute if score temp value > y_absolute value if block ~ ~ ~ polished_blackstone_brick_stairs[facing=west,half=bottom] run setblock ~ ~ ~ blackstone_stairs[facing=west,half=bottom]
execute if score temp value > y_absolute value if block ~ ~ ~ polished_blackstone_brick_stairs[facing=west,half=top] run setblock ~ ~ ~ blackstone_stairs[facing=west,half=top]
execute if score temp value > y_absolute value if block ~ ~ ~ polished_blackstone_brick_stairs[facing=east,half=bottom] run setblock ~ ~ ~ blackstone_stairs[facing=east,half=bottom]
execute if score temp value > y_absolute value if block ~ ~ ~ polished_blackstone_brick_stairs[facing=east,half=top] run setblock ~ ~ ~ blackstone_stairs[facing=east,half=top]
execute if score temp value > y_absolute value if block ~ ~ ~ polished_blackstone_brick_slab[type=top] run setblock ~ ~ ~ blackstone_slab[type=top]
execute if score temp value > y_absolute value if block ~ ~ ~ polished_blackstone_brick_slab[type=bottom] run setblock ~ ~ ~ blackstone_slab[type=bottom]
