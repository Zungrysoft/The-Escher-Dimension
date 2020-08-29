#Delete the command block
fill ~ ~1 ~ ~ ~ ~ red_nether_bricks

#Generate the lantern
execute if block ~ ~ ~-1 air if block ~ ~1 ~-1 air if block ~ ~2 ~-1 air run function tid:misc/stack_lantern_north_generate