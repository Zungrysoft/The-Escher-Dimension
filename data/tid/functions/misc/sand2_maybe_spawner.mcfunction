#Delete the Command Block
setblock ~ ~ ~ air
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace redstone_block

#Maybe place the spawner
execute if predicate tid:random_25 run setblock ~ ~ ~ minecraft:blackstone
execute if predicate tid:random_60 run function tid:misc/sand2_random_spawner
