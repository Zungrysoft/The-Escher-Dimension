function tid:dungeon/nature/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned ~-6 ~-1 ~1 if blocks ~ ~128 ~ ~12 ~142 ~12 1001 1 1001 all run function tid:dungeon/nature/select_cross
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~-3 ~-1 ~1 if blocks ~ ~128 ~ ~6 ~138 ~6 1001 1 1001 all if blocks ~ ~139 ~ ~6 ~158 ~6 1001 1 1001 all run function tid:dungeon/nature/select_ladder
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-4 ~-1 ~1 if blocks ~ ~128 ~ ~8 ~133 ~12 1001 1 1001 all run function tid:dungeon/nature/select_hall_north

execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-12 ~-8 ~ if blocks ~ ~128 ~ ~31 ~154 ~31 1001 1 1001 all if blocks ~32 ~128 ~ ~63 ~154 ~31 1001 1 1001 all if blocks ~32 ~128 ~32 ~63 ~154 ~63 1001 1 1001 all if blocks ~ ~128 ~32 ~31 ~154 ~63 1001 1 1001 all run function tid:dungeon/nature/select_biome
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-25 ~-8 ~ if blocks ~ ~128 ~ ~31 ~154 ~31 1001 1 1001 all if blocks ~32 ~128 ~ ~63 ~154 ~31 1001 1 1001 all if blocks ~32 ~128 ~32 ~63 ~154 ~63 1001 1 1001 all if blocks ~ ~128 ~32 ~31 ~154 ~63 1001 1 1001 all run function tid:dungeon/nature/select_biome
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-38 ~-8 ~ if blocks ~ ~128 ~ ~31 ~154 ~31 1001 1 1001 all if blocks ~32 ~128 ~ ~63 ~154 ~31 1001 1 1001 all if blocks ~32 ~128 ~32 ~63 ~154 ~63 1001 1 1001 all if blocks ~ ~128 ~32 ~31 ~154 ~63 1001 1 1001 all run function tid:dungeon/nature/select_biome
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~-51 ~-8 ~ if blocks ~ ~128 ~ ~31 ~154 ~31 1001 1 1001 all if blocks ~32 ~128 ~ ~63 ~154 ~31 1001 1 1001 all if blocks ~32 ~128 ~32 ~63 ~154 ~63 1001 1 1001 all if blocks ~ ~128 ~32 ~31 ~154 ~63 1001 1 1001 all run function tid:dungeon/nature/select_biome

execute if score @s failed matches 1.. positioned ~-13 ~-1 ~1 if blocks ~ ~128 ~ ~16 ~137 ~16 1001 1 1001 all run function tid:dungeon/nature/select_end
