function tid:dungeon/sand1/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_33 positioned ~-18 ~-1 ~-6 if blocks ~ ~128 ~ ~12 ~138 ~12 1001 1 1001 all run function tid:dungeon/sand1/select_room