#Remove the andesite block
setblock ~ ~ ~ air

#Randomly pick a direction
execute if predicate tid:random_25 if block ~ ~ ~2 andesite run function tid:misc/jungle_maze_south
execute if predicate tid:random_33 if block ~ ~ ~-2 andesite run function tid:misc/jungle_maze_north
execute if predicate tid:random_50 if block ~-2 ~ ~ andesite run function tid:misc/jungle_maze_west
execute if block ~2 ~ ~ andesite run function tid:misc/jungle_maze_east
execute if block ~-2 ~ ~ andesite run function tid:misc/jungle_maze_west
execute if block ~ ~ ~-2 andesite run function tid:misc/jungle_maze_north
execute if block ~ ~ ~2 andesite run function tid:misc/jungle_maze_south