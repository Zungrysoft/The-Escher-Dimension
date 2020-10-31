#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Determine direction
execute if block ~-1 ~ ~ end_stone_bricks run function tid:misc/moon_deco_east
execute if block ~1 ~ ~ end_stone_bricks run function tid:misc/moon_deco_west
execute if block ~ ~ ~-1 end_stone_bricks run function tid:misc/moon_deco_south
execute if block ~ ~ ~1 end_stone_bricks run function tid:misc/moon_deco_north

execute if block ~-1 ~ ~ granite run function tid:misc/moon_deco_east
execute if block ~1 ~ ~ granite run function tid:misc/moon_deco_west
execute if block ~ ~ ~-1 granite run function tid:misc/moon_deco_south
execute if block ~ ~ ~1 granite run function tid:misc/moon_deco_north

execute if block ~-1 ~ ~ polished_granite run function tid:misc/moon_deco_east
execute if block ~1 ~ ~ polished_granite run function tid:misc/moon_deco_west
execute if block ~ ~ ~-1 polished_granite run function tid:misc/moon_deco_south
execute if block ~ ~ ~1 polished_granite run function tid:misc/moon_deco_north
