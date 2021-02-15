#Set the dark_prismarine block
setblock ~ ~ ~ dark_prismarine

#Check the directions
execute if predicate tid:random_05 positioned ~ ~ ~-1 run function tid:misc/moon_moss_north
execute if predicate tid:random_05 positioned ~ ~ ~1 run function tid:misc/moon_moss_south
execute if predicate tid:random_05 positioned ~-1 ~ ~ run function tid:misc/moon_moss_west
execute if predicate tid:random_05 positioned ~1 ~ ~ run function tid:misc/moon_moss_east
execute if predicate tid:random_05 positioned ~ ~-1 ~ run function tid:misc/moon_moss_down
execute if predicate tid:random_05 positioned ~ ~1 ~ run function tid:misc/moon_moss_up

execute if predicate tid:random_10 positioned ~ ~ ~-1 run function tid:misc/moon_moss_north
execute if predicate tid:random_10 positioned ~ ~ ~1 run function tid:misc/moon_moss_south
execute if predicate tid:random_10 positioned ~-1 ~ ~ run function tid:misc/moon_moss_west
execute if predicate tid:random_10 positioned ~1 ~ ~ run function tid:misc/moon_moss_east
execute if predicate tid:random_10 positioned ~ ~-1 ~ run function tid:misc/moon_moss_down
execute if predicate tid:random_10 positioned ~ ~1 ~ run function tid:misc/moon_moss_up

execute if predicate tid:random_15 positioned ~ ~ ~-1 run function tid:misc/moon_moss_north
execute if predicate tid:random_15 positioned ~ ~ ~1 run function tid:misc/moon_moss_south
execute if predicate tid:random_15 positioned ~-1 ~ ~ run function tid:misc/moon_moss_west
execute if predicate tid:random_15 positioned ~1 ~ ~ run function tid:misc/moon_moss_east
execute if predicate tid:random_15 positioned ~ ~-1 ~ run function tid:misc/moon_moss_down
execute if predicate tid:random_15 positioned ~ ~1 ~ run function tid:misc/moon_moss_up

execute if predicate tid:random_20 positioned ~ ~ ~-1 run function tid:misc/moon_moss_north
execute if predicate tid:random_20 positioned ~ ~ ~1 run function tid:misc/moon_moss_south
execute if predicate tid:random_20 positioned ~-1 ~ ~ run function tid:misc/moon_moss_west
execute if predicate tid:random_20 positioned ~1 ~ ~ run function tid:misc/moon_moss_east
execute if predicate tid:random_20 positioned ~ ~-1 ~ run function tid:misc/moon_moss_down
execute if predicate tid:random_20 positioned ~ ~1 ~ run function tid:misc/moon_moss_up

execute if predicate tid:random_30 positioned ~ ~ ~-1 run function tid:misc/moon_moss_north
execute if predicate tid:random_30 positioned ~ ~ ~1 run function tid:misc/moon_moss_south
execute if predicate tid:random_30 positioned ~-1 ~ ~ run function tid:misc/moon_moss_west
execute if predicate tid:random_30 positioned ~1 ~ ~ run function tid:misc/moon_moss_east
execute if predicate tid:random_30 positioned ~ ~-1 ~ run function tid:misc/moon_moss_down
execute if predicate tid:random_30 positioned ~ ~1 ~ run function tid:misc/moon_moss_up

execute if predicate tid:random_15 positioned ~ ~ ~-1 run function tid:misc/moon_moss_north
execute if predicate tid:random_20 positioned ~ ~ ~1 run function tid:misc/moon_moss_south
execute if predicate tid:random_25 positioned ~-1 ~ ~ run function tid:misc/moon_moss_west
execute if predicate tid:random_33 positioned ~1 ~ ~ run function tid:misc/moon_moss_east
execute if predicate tid:random_50 positioned ~ ~-1 ~ run function tid:misc/moon_moss_down
execute positioned ~ ~1 ~ run function tid:misc/moon_moss_up
