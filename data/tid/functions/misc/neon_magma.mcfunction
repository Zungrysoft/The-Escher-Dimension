#Set the purpur_pillar block
setblock ~ ~ ~ purpur_pillar

#Check the directions
execute if predicate tid:random_05 positioned ~ ~ ~-1 run function tid:misc/neon_magma_north
execute if predicate tid:random_05 positioned ~ ~ ~1 run function tid:misc/neon_magma_south
execute if predicate tid:random_05 positioned ~-1 ~ ~ run function tid:misc/neon_magma_west
execute if predicate tid:random_05 positioned ~1 ~ ~ run function tid:misc/neon_magma_east
execute if predicate tid:random_05 positioned ~ ~-1 ~ run function tid:misc/neon_magma_down
execute if predicate tid:random_05 positioned ~ ~1 ~ run function tid:misc/neon_magma_up

execute if predicate tid:random_10 positioned ~ ~ ~-1 run function tid:misc/neon_magma_north
execute if predicate tid:random_10 positioned ~ ~ ~1 run function tid:misc/neon_magma_south
execute if predicate tid:random_10 positioned ~-1 ~ ~ run function tid:misc/neon_magma_west
execute if predicate tid:random_10 positioned ~1 ~ ~ run function tid:misc/neon_magma_east
execute if predicate tid:random_10 positioned ~ ~-1 ~ run function tid:misc/neon_magma_down
execute if predicate tid:random_10 positioned ~ ~1 ~ run function tid:misc/neon_magma_up

execute if predicate tid:random_15 positioned ~ ~ ~-1 run function tid:misc/neon_magma_north
execute if predicate tid:random_15 positioned ~ ~ ~1 run function tid:misc/neon_magma_south
execute if predicate tid:random_15 positioned ~-1 ~ ~ run function tid:misc/neon_magma_west
execute if predicate tid:random_15 positioned ~1 ~ ~ run function tid:misc/neon_magma_east
execute if predicate tid:random_15 positioned ~ ~-1 ~ run function tid:misc/neon_magma_down
execute if predicate tid:random_15 positioned ~ ~1 ~ run function tid:misc/neon_magma_up

execute if predicate tid:random_20 positioned ~ ~ ~-1 run function tid:misc/neon_magma_north
execute if predicate tid:random_20 positioned ~ ~ ~1 run function tid:misc/neon_magma_south
execute if predicate tid:random_20 positioned ~-1 ~ ~ run function tid:misc/neon_magma_west
execute if predicate tid:random_20 positioned ~1 ~ ~ run function tid:misc/neon_magma_east
execute if predicate tid:random_20 positioned ~ ~-1 ~ run function tid:misc/neon_magma_down
execute if predicate tid:random_20 positioned ~ ~1 ~ run function tid:misc/neon_magma_up

execute if predicate tid:random_30 positioned ~ ~ ~-1 run function tid:misc/neon_magma_north
execute if predicate tid:random_30 positioned ~ ~ ~1 run function tid:misc/neon_magma_south
execute if predicate tid:random_30 positioned ~-1 ~ ~ run function tid:misc/neon_magma_west
execute if predicate tid:random_30 positioned ~1 ~ ~ run function tid:misc/neon_magma_east
execute if predicate tid:random_30 positioned ~ ~-1 ~ run function tid:misc/neon_magma_down
execute if predicate tid:random_30 positioned ~ ~1 ~ run function tid:misc/neon_magma_up

execute if predicate tid:random_15 positioned ~ ~ ~-1 run function tid:misc/neon_magma_north
execute if predicate tid:random_20 positioned ~ ~ ~1 run function tid:misc/neon_magma_south
execute if predicate tid:random_25 positioned ~-1 ~ ~ run function tid:misc/neon_magma_west
execute if predicate tid:random_33 positioned ~1 ~ ~ run function tid:misc/neon_magma_east
execute if predicate tid:random_50 positioned ~ ~-1 ~ run function tid:misc/neon_magma_down
execute positioned ~ ~1 ~ run function tid:misc/neon_magma_up
