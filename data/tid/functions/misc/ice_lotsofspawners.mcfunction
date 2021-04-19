#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ stone_bricks

#Place all eight spawners
execute positioned ~1 ~0 ~ run function tid:misc/ice_random_spawner
execute positioned ~-1 ~0 ~ run function tid:misc/ice_random_spawner
execute positioned ~ ~0 ~1 run function tid:misc/ice_random_spawner
execute positioned ~ ~0 ~-1 run function tid:misc/ice_random_spawner
execute positioned ~1 ~1 ~ run function tid:misc/ice_random_spawner
execute positioned ~-1 ~1 ~ run function tid:misc/ice_random_spawner
execute positioned ~ ~1 ~1 run function tid:misc/ice_random_spawner
execute positioned ~ ~1 ~-1 run function tid:misc/ice_random_spawner
