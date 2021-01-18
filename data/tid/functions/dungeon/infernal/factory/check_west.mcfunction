function tid:dungeon/infernal/factory/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-9 ~-1 ~-2 if blocks ~ ~128 ~ ~8 ~134 ~4 1033 1 1033 all run function tid:dungeon/infernal/factory/select_hall_west
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-15 ~-1 ~-5 if blocks ~ ~128 ~ ~14 ~136 ~10 1033 1 1033 all run function tid:dungeon/infernal/factory/select_nexus
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned -5 ~-1 ~-2 if blocks ~ ~128 ~ ~4 ~134 ~4 1033 1 1033 all run function tid:dungeon/infernal/factory/select_cross
execute unless score @s failed matches 1.. if predicate tid:random_08 positioned ~-7 ~-1 ~-3 if blocks ~ ~128 ~ ~6 ~134 ~6 1033 1 1033 all run function tid:dungeon/infernal/factory/select_bigcross
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned ~-3 ~-1 ~0 if blocks ~ ~128 ~ ~2 ~144 ~0 1033 1 1033 all run function tid:dungeon/infernal/factory/select_ladder_west
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned ~-3 ~-10 ~0 if blocks ~ ~128 ~ ~2 ~139 ~0 1033 1 1033 all run function tid:dungeon/infernal/factory/select_ladder_west

execute if score @s failed matches 1.. positioned ~-1 ~-1 ~-2 if blocks ~ ~128 ~ ~0 ~134 ~4 1033 1 1033 all run function tid:dungeon/infernal/factory/select_spacer_west