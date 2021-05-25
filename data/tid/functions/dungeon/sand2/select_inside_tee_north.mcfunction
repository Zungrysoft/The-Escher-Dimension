#Pick the Room
function tid:dungeon/sand2/select_inside_tee


execute if predicate tid:random_50 run function tid:dungeon/sand2/orient_room_180f

#Event rooms
execute if score art_templates_sand2 value matches 1 if score sand2_rooms value matches ..40 run function tid:dungeon/sand2/select_event3
execute if score art_templates_sand2 value matches 0 if score sand2_rooms value matches ..80 run function tid:dungeon/sand2/select_event3

#Activate the structure block
setblock ~ ~1 ~ minecraft:redstone_block