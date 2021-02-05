#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Create the spawners
execute positioned ~ ~0 ~ run function tid:misc/sin_random_spawner
execute positioned ~ ~1 ~ run function tid:misc/sin_random_spawner
execute positioned ~ ~2 ~ run function tid:misc/sin_random_spawner
