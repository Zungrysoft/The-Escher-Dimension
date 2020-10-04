#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Add the sand
fill ~5 ~-1 ~5 ~-5 ~-10 ~-5 sand

#Add the X
setblock ~ ~-1 ~ red_sand

setblock ~-1 ~-1 ~-1 red_sand
setblock ~1 ~-1 ~1 red_sand
setblock ~1 ~-1 ~-1 red_sand
setblock ~-1 ~-1 ~1 red_sand

setblock ~-2 ~-1 ~-2 red_sand
setblock ~2 ~-1 ~2 red_sand
setblock ~2 ~-1 ~-2 red_sand
setblock ~-2 ~-1 ~2 red_sand

setblock ~-3 ~-1 ~-3 red_sand
setblock ~3 ~-1 ~3 red_sand
setblock ~3 ~-1 ~-3 red_sand
setblock ~-3 ~-1 ~3 red_sand

#Generate the first room of Zorethab's Tomb
execute positioned ~-6 ~-21 ~-6 run function tid:dungeon/sand2/select_room

#Add the bars
fill ~5 ~-11 ~5 ~5 ~-11 ~-5 sandstone
fill ~3 ~-11 ~5 ~3 ~-11 ~-5 sandstone
fill ~1 ~-11 ~5 ~1 ~-11 ~-5 sandstone
fill ~-1 ~-11 ~5 ~-1 ~-11 ~-5 sandstone
fill ~-3 ~-11 ~5 ~-3 ~-11 ~-5 sandstone
fill ~-5 ~-11 ~5 ~-5 ~-11 ~-5 sandstone

#Add the torches
fill ~4 ~-11 ~5 ~4 ~-11 ~-5 wall_torch[facing=west]
fill ~2 ~-11 ~5 ~2 ~-11 ~-5 wall_torch[facing=west]
fill ~0 ~-11 ~5 ~0 ~-11 ~-5 wall_torch[facing=west]
fill ~-2 ~-11 ~5 ~-2 ~-11 ~-5 wall_torch[facing=west]
fill ~-4 ~-11 ~5 ~-4 ~-11 ~-5 wall_torch[facing=west]