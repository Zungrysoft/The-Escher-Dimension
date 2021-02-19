#Delete the Command Block
setblock ~ ~ ~ air
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace redstone_block

#Maybe place the spawner
execute if predicate tid:random_33 run function tid:misc/sand2_random_spawner