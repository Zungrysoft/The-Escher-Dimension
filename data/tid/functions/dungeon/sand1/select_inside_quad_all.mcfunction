#Pick the Room
function tid:dungeon/sand1/select_inside_quad

execute if predicate tid:random_50 run function tid:dungeon/sand1/orient_room_0f
execute if predicate tid:random_33 run function tid:dungeon/sand1/orient_room_90
execute if predicate tid:random_25 run function tid:dungeon/sand1/orient_room_90f
execute if predicate tid:random_20 run function tid:dungeon/sand1/orient_room_180
execute if predicate tid:random_15 run function tid:dungeon/sand1/orient_room_180f
execute if predicate tid:random_15 run function tid:dungeon/sand1/orient_room_270
execute if predicate tid:random_10 run function tid:dungeon/sand1/orient_room_270f

#Activate the structure block
setblock ~ ~1 ~ minecraft:redstone_block