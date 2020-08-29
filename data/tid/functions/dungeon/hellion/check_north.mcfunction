function tid:dungeon/hellion/room_checks
function tid:update_coords
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-3 ~-1 ~-7 if blocks ~ ~-127 ~ ~6 ~-123 ~6 1001 129 1001 all run function tid:dungeon/hellion/select_room
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-1 ~-1 ~-6 if blocks ~ ~-127 ~ ~2 ~-123 ~5 1001 129 1001 all run function tid:dungeon/hellion/select_stairs_north
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-1 ~-4 ~-6 if blocks ~ ~-127 ~ ~2 ~-123 ~5 1001 129 1001 all run function tid:dungeon/hellion/select_stairs_south
execute unless score @s failed matches 1.. if predicate tid:random_05 positioned ~-1 ~-1 ~-3 if blocks ~ ~-128 ~ ~2 ~-124 ~2 1001 129 1001 all run function tid:dungeon/hellion/select_outside
execute unless score @s failed matches 1.. if predicate tid:random_005 positioned ~-4 ~-1 ~-9 if blocks ~ ~-128 ~ ~8 ~-113 ~8 1001 129 1001 all run function tid:dungeon/hellion/select_totem

#Stairwells only show up in the (+, +) quadrant
execute unless score @s failed matches 1.. if score @s x matches 0.. if score @s z matches 0.. if predicate tid:random_04 unless block ~ ~ ~1 quartz_pillar positioned ~-1 ~-4 ~-3 if blocks ~ ~-128 ~ ~2 ~-122 ~2 1001 129 1001 all run function tid:dungeon/hellion/select_stairwell

#Downward stairs show up more often in the (-, -) quadrant
execute unless score @s failed matches 1.. if score @s x matches ..0 if score @s z matches ..0 if predicate tid:random_06 positioned ~-1 ~-4 ~-6 if blocks ~ ~-127 ~ ~2 ~-123 ~5 1001 129 1001 all run function tid:dungeon/hellion/select_stairs_south

#Outside platforms show up more often in the (-, +) quadrant
execute unless score @s failed matches 1.. if score @s x matches ..0 if score @s z matches 0.. if predicate tid:random_15 positioned ~-1 ~-1 ~-3 if blocks ~ ~-128 ~ ~2 ~-124 ~2 1001 129 1001 all run function tid:dungeon/hellion/select_outside

#Bridges only show up in the (+, -) quadrant
execute unless score @s failed matches 1.. if score @s x matches 0.. if score @s z matches ..0 if predicate tid:random_08 positioned ~-1 ~-3 ~-10 if blocks ~ ~-128 ~ ~2 ~-123 ~9 1001 129 1001 all run function tid:dungeon/hellion/select_bridge_north