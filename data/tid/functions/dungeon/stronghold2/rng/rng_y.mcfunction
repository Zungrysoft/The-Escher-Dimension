#Stone Bricks
execute if block ~ ~ ~ stone_bricks run function tid:dungeon/stronghold2/rng/stone_bricks

#Stone Brick variants
#execute if predicate tid:random_33 if block ~ ~ ~ stone_brick_stairs[facing=north,half=bottom] run setblock ~ ~ ~ mossy_stone_brick_stairs[facing=north,half=bottom]
#execute if predicate tid:random_33 if block ~ ~ ~ stone_brick_stairs[facing=north,half=top] run setblock ~ ~ ~ mossy_stone_brick_stairs[facing=north,half=top]
#execute if predicate tid:random_33 if block ~ ~ ~ stone_brick_stairs[facing=south,half=bottom] run setblock ~ ~ ~ mossy_stone_brick_stairs[facing=south,half=bottom]
#execute if predicate tid:random_33 if block ~ ~ ~ stone_brick_stairs[facing=south,half=top] run setblock ~ ~ ~ mossy_stone_brick_stairs[facing=south,half=top]
#execute if predicate tid:random_33 if block ~ ~ ~ stone_brick_stairs[facing=west,half=bottom] run setblock ~ ~ ~ mossy_stone_brick_stairs[facing=west,half=bottom]
#execute if predicate tid:random_33 if block ~ ~ ~ stone_brick_stairs[facing=west,half=top] run setblock ~ ~ ~ mossy_stone_brick_stairs[facing=west,half=top]
#execute if predicate tid:random_33 if block ~ ~ ~ stone_brick_stairs[facing=east,half=bottom] run setblock ~ ~ ~ mossy_stone_brick_stairs[facing=east,half=bottom]
#execute if predicate tid:random_33 if block ~ ~ ~ stone_brick_stairs[facing=east,half=top] run setblock ~ ~ ~ mossy_stone_brick_stairs[facing=east,half=top]
#execute if predicate tid:random_33 if block ~ ~ ~ stone_brick_slab[type=top] run setblock ~ ~ ~ mossy_stone_brick_slab[type=top]
#execute if predicate tid:random_33 if block ~ ~ ~ stone_brick_slab[type=bottom] run setblock ~ ~ ~ mossy_stone_brick_slab[type=bottom]
#execute if predicate tid:random_33 if block ~ ~ ~ stone_brick_wall run setblock ~ ~ ~ mossy_stone_brick_wall

#Air
execute if predicate tid:random_08 if block ~ ~ ~ air run function tid:dungeon/stronghold2/rng/air

#Water
#execute if predicate tid:random_60 if block ~ ~ ~ water[level=0] if block ~ ~-1 ~ #tid:stone_brick_blocks run function tid:dungeon/stronghold2/rng/water

#Recurse
scoreboard players add ycount value 1
execute unless score ycount value >= ymax value positioned ~ ~1 ~ run function tid:dungeon/stronghold2/rng/rng_y
