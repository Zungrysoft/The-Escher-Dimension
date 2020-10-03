#Pick the Room
function tid:dungeon/sand2/select_inside_straight


execute if predicate tid:random_50 run function tid:dungeon/sand2/orient_room_0f
execute if predicate tid:random_33 run function tid:dungeon/sand2/orient_room_180
execute if predicate tid:random_25 run function tid:dungeon/sand2/orient_room_180f

#Activate the structure block
setblock ~ ~1 ~ minecraft:redstone_block