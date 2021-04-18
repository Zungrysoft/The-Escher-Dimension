#Stone Bricks
execute if block ~ ~ ~ stone_bricks run function tid:dungeon/intro/rng/stone_bricks

#Stone brick deco to polished andesite
execute if predicate tid:random_25 if block ~ ~ ~ stone_brick_stairs[facing=north,half=bottom] run setblock ~ ~ ~ polished_andesite_stairs[facing=north,half=bottom]
execute if predicate tid:random_25 if block ~ ~ ~ stone_brick_stairs[facing=north,half=top] run setblock ~ ~ ~ polished_andesite_stairs[facing=north,half=top]
execute if predicate tid:random_25 if block ~ ~ ~ stone_brick_stairs[facing=south,half=bottom] run setblock ~ ~ ~ polished_andesite_stairs[facing=south,half=bottom]
execute if predicate tid:random_25 if block ~ ~ ~ stone_brick_stairs[facing=south,half=top] run setblock ~ ~ ~ polished_andesite_stairs[facing=south,half=top]
execute if predicate tid:random_25 if block ~ ~ ~ stone_brick_stairs[facing=west,half=bottom] run setblock ~ ~ ~ polished_andesite_stairs[facing=west,half=bottom]
execute if predicate tid:random_25 if block ~ ~ ~ stone_brick_stairs[facing=west,half=top] run setblock ~ ~ ~ polished_andesite_stairs[facing=west,half=top]
execute if predicate tid:random_25 if block ~ ~ ~ stone_brick_stairs[facing=east,half=bottom] run setblock ~ ~ ~ polished_andesite_stairs[facing=east,half=bottom]
execute if predicate tid:random_25 if block ~ ~ ~ stone_brick_stairs[facing=east,half=top] run setblock ~ ~ ~ polished_andesite_stairs[facing=east,half=top]
execute if predicate tid:random_25 if block ~ ~ ~ stone_brick_slab[type=top] run setblock ~ ~ ~ polished_andesite_slab[type=top]
execute if predicate tid:random_25 if block ~ ~ ~ stone_brick_slab[type=bottom] run setblock ~ ~ ~ polished_andesite_slab[type=bottom]

#Stone brick deco to dark prismarine
execute if predicate tid:random_15 if block ~ ~ ~ stone_brick_stairs[facing=north,half=bottom] run setblock ~ ~ ~ dark_prismarine_stairs[facing=north,half=bottom]
execute if predicate tid:random_15 if block ~ ~ ~ stone_brick_stairs[facing=north,half=top] run setblock ~ ~ ~ dark_prismarine_stairs[facing=north,half=top]
execute if predicate tid:random_15 if block ~ ~ ~ stone_brick_stairs[facing=south,half=bottom] run setblock ~ ~ ~ dark_prismarine_stairs[facing=south,half=bottom]
execute if predicate tid:random_15 if block ~ ~ ~ stone_brick_stairs[facing=south,half=top] run setblock ~ ~ ~ dark_prismarine_stairs[facing=south,half=top]
execute if predicate tid:random_15 if block ~ ~ ~ stone_brick_stairs[facing=west,half=bottom] run setblock ~ ~ ~ dark_prismarine_stairs[facing=west,half=bottom]
execute if predicate tid:random_15 if block ~ ~ ~ stone_brick_stairs[facing=west,half=top] run setblock ~ ~ ~ dark_prismarine_stairs[facing=west,half=top]
execute if predicate tid:random_15 if block ~ ~ ~ stone_brick_stairs[facing=east,half=bottom] run setblock ~ ~ ~ dark_prismarine_stairs[facing=east,half=bottom]
execute if predicate tid:random_15 if block ~ ~ ~ stone_brick_stairs[facing=east,half=top] run setblock ~ ~ ~ dark_prismarine_stairs[facing=east,half=top]
execute if predicate tid:random_15 if block ~ ~ ~ stone_brick_slab[type=top] run setblock ~ ~ ~ dark_prismarine_slab[type=top]
execute if predicate tid:random_15 if block ~ ~ ~ stone_brick_slab[type=bottom] run setblock ~ ~ ~ dark_prismarine_slab[type=bottom]

#Recurse
scoreboard players add ycount value 1
execute unless score ycount value >= ymax value positioned ~ ~1 ~ run function tid:dungeon/intro/rng/rng_y
