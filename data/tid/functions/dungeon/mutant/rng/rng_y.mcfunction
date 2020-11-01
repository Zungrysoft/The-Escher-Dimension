#Grass Block
execute if block ~ ~ ~ grass_block run function tid:dungeon/mutant/rng/grass_block

#Dirt
execute if block ~ ~ ~ dirt run function tid:dungeon/mutant/rng/dirt

#Warped Planks
execute if predicate tid:random_05 if block ~ ~ ~ warped_planks run function tid:dungeon/mutant/rng/warped_planks

#Dark Prismarine
execute if predicate tid:random_25 if block ~ ~ ~ dark_prismarine run setblock ~ ~ ~ prismarine_bricks
execute if predicate tid:random_25 if block ~ ~ ~ dark_prismarine_stairs[facing=north,half=bottom] run setblock ~ ~ ~ prismarine_brick_stairs[facing=north,half=bottom]
execute if predicate tid:random_25 if block ~ ~ ~ dark_prismarine_stairs[facing=north,half=top] run setblock ~ ~ ~ prismarine_brick_stairs[facing=north,half=top]
execute if predicate tid:random_25 if block ~ ~ ~ dark_prismarine_stairs[facing=south,half=bottom] run setblock ~ ~ ~ prismarine_brick_stairs[facing=south,half=bottom]
execute if predicate tid:random_25 if block ~ ~ ~ dark_prismarine_stairs[facing=south,half=top] run setblock ~ ~ ~ prismarine_brick_stairs[facing=south,half=top]
execute if predicate tid:random_25 if block ~ ~ ~ dark_prismarine_stairs[facing=west,half=bottom] run setblock ~ ~ ~ prismarine_brick_stairs[facing=west,half=bottom]
execute if predicate tid:random_25 if block ~ ~ ~ dark_prismarine_stairs[facing=west,half=top] run setblock ~ ~ ~ prismarine_brick_stairs[facing=west,half=top]
execute if predicate tid:random_25 if block ~ ~ ~ dark_prismarine_stairs[facing=east,half=bottom] run setblock ~ ~ ~ prismarine_brick_stairs[facing=east,half=bottom]
execute if predicate tid:random_25 if block ~ ~ ~ dark_prismarine_stairs[facing=east,half=top] run setblock ~ ~ ~ prismarine_brick_stairs[facing=east,half=top]
execute if predicate tid:random_25 if block ~ ~ ~ dark_prismarine_slab[type=top] run setblock ~ ~ ~ prismarine_brick_slab[type=top]
execute if predicate tid:random_25 if block ~ ~ ~ dark_prismarine_slab[type=bottom] run setblock ~ ~ ~ prismarine_brick_slab[type=bottom]

#Recurse
scoreboard players add ycount value 1
execute unless score ycount value > ymax value positioned ~ ~1 ~ run function tid:dungeon/mutant/rng/rng_y