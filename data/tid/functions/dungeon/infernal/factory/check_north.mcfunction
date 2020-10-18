function tid:dungeon/infernal/factory/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_20 positioned ~-7 ~-1 ~-11 if blocks ~ ~128 ~ ~14 ~136 ~10 1001 1 1033 all run function tid:dungeon/infernal/factory/select_nexus
execute unless score @s failed matches 1.. if predicate tid:random_30 positioned ~-2 ~-1 ~-5 if blocks ~ ~128 ~ ~4 ~134 ~4 1001 1 1033 all run function tid:dungeon/infernal/factory/select_cross
execute unless score @s failed matches 1.. if predicate tid:random_08 positioned ~-3 ~-1 ~-7 if blocks ~ ~128 ~ ~6 ~134 ~6 1001 1 1033 all run function tid:dungeon/infernal/factory/select_bigcross
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned ~0 ~-1 ~-3 if blocks ~ ~128 ~ ~0 ~144 ~2 1001 1 1033 all run function tid:dungeon/infernal/factory/select_ladder_north
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned ~0 ~-10 ~-3 if blocks ~ ~128 ~ ~0 ~139 ~2 1001 1 1033 all run function tid:dungeon/infernal/factory/select_ladder_north

execute if score @s failed matches 1.. positioned ~-2 ~-1 ~-1 if blocks ~ ~128 ~ ~4 ~134 ~0 1001 1 1033 all run function tid:dungeon/infernal/factory/select_spacer_north