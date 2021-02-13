#Delete command block
fill ~ ~ ~ ~ ~1 ~ air

#Generate it
execute if blocks ~-2 ~-121 ~-2 ~2 ~-119 ~2 1001 1 1001 all run function tid:dungeon/sin/select_deco_medium
