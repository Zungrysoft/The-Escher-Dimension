#Build the spine shaft
fill ~ ~ ~ ~1 ~ ~1 stone_bricks
execute positioned ~0 ~ ~0 run function tid:dungeon/intro/rng/stone_bricks
execute positioned ~1 ~ ~0 run function tid:dungeon/intro/rng/stone_bricks
execute positioned ~0 ~ ~1 run function tid:dungeon/intro/rng/stone_bricks
execute positioned ~1 ~ ~1 run function tid:dungeon/intro/rng/stone_bricks

#Maybe place some thorns
execute positioned ~0 ~ ~0 if predicate tid:random_04 if block ~ ~-3 ~ air run function tid:misc/intro_spine_thorn_north
execute positioned ~0 ~ ~0 if predicate tid:random_04 if block ~ ~-3 ~ air run function tid:misc/intro_spine_thorn_west

execute positioned ~1 ~ ~0 if predicate tid:random_04 if block ~ ~-3 ~ air run function tid:misc/intro_spine_thorn_north
execute positioned ~1 ~ ~0 if predicate tid:random_04 if block ~ ~-3 ~ air run function tid:misc/intro_spine_thorn_east

execute positioned ~0 ~ ~1 if predicate tid:random_04 if block ~ ~-3 ~ air run function tid:misc/intro_spine_thorn_south
execute positioned ~0 ~ ~1 if predicate tid:random_04 if block ~ ~-3 ~ air run function tid:misc/intro_spine_thorn_west

execute positioned ~1 ~ ~1 if predicate tid:random_04 if block ~ ~-3 ~ air run function tid:misc/intro_spine_thorn_east
execute positioned ~1 ~ ~1 if predicate tid:random_04 if block ~ ~-3 ~ air run function tid:misc/intro_spine_thorn_south
