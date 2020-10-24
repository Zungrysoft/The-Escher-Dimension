#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Generate the posts
execute if predicate tid:random_90 positioned ~ ~ ~ run function tid:misc/moon_sapling_post
execute if predicate tid:random_90 positioned ~1 ~ ~ run function tid:misc/moon_sapling_post
execute if predicate tid:random_90 positioned ~ ~ ~1 run function tid:misc/moon_sapling_post
execute if predicate tid:random_90 positioned ~-1 ~ ~ run function tid:misc/moon_sapling_post
execute if predicate tid:random_90 positioned ~ ~ ~-1 run function tid:misc/moon_sapling_post
execute if predicate tid:random_90 positioned ~1 ~ ~1 run function tid:misc/moon_sapling_post
execute if predicate tid:random_90 positioned ~1 ~ ~-1 run function tid:misc/moon_sapling_post
execute if predicate tid:random_90 positioned ~-1 ~ ~1 run function tid:misc/moon_sapling_post
execute if predicate tid:random_90 positioned ~-1 ~ ~-1 run function tid:misc/moon_sapling_post
