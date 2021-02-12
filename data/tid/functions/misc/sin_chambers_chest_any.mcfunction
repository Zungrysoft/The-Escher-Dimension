#Decide which direction to try and generate
execute if predicate tid:random_25 run function tid:misc/sin_chambers_chest_north
execute if predicate tid:random_33 run function tid:misc/sin_chambers_chest_south
execute if predicate tid:random_50 run function tid:misc/sin_chambers_chest_west
function tid:misc/sin_chambers_chest_east

#Kill the source entity
kill @s
