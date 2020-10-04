#Pick the Room
function tid:dungeon/sand1/select_inside_turn

function tid:dungeon/sand2/orient_room_0f
execute if predicate tid:random_50 run function tid:dungeon/sand2/orient_room_270

#Activate the structure block
setblock ~ ~1 ~ minecraft:redstone_block