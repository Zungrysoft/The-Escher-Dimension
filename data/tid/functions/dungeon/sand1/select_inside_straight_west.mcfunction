#Pick the Room
function tid:dungeon/sand1/select_inside_straight

function tid:dungeon/sand2/orient_room_90
execute if predicate tid:random_50 run function tid:dungeon/sand2/orient_room_90f
execute if predicate tid:random_33 run function tid:dungeon/sand2/orient_room_270
execute if predicate tid:random_25 run function tid:dungeon/sand2/orient_room_270f

#Activate the structure block
setblock ~ ~1 ~ minecraft:redstone_block