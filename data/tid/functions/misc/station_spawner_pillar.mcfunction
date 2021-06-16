#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Build the three spawners
execute positioned ~ ~0 ~ run function tid:misc/station_random_spawner
execute positioned ~ ~1 ~ run function tid:misc/station_random_spawner
execute positioned ~ ~2 ~ run function tid:misc/station_random_spawner
