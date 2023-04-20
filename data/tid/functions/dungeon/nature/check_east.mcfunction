function tid:dungeon/nature/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_04 positioned ~1 ~-1 ~-6 if blocks ~ ~128 ~ ~12 ~142 ~12 1001 1 1001 all run function tid:dungeon/nature/select_cross
execute unless score @s failed matches 1.. if predicate tid:random_01 positioned ~1 ~-1 ~-3 if blocks ~ ~128 ~ ~6 ~138 ~6 1001 1 1001 all if blocks ~ ~139 ~ ~6 ~158 ~6 1001 1 1001 all run function tid:dungeon/nature/select_ladder
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~1 ~-1 ~-4 if blocks ~ ~128 ~ ~12 ~133 ~8 1001 1 1001 all run function tid:dungeon/nature/select_hall_west

execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~ ~-8 ~-12 if blocks ~ ~128 ~ ~31 ~154 ~31 1001 1 1001 all if blocks ~32 ~128 ~ ~63 ~154 ~31 1001 1 1001 all if blocks ~32 ~128 ~32 ~63 ~154 ~63 1001 1 1001 all if blocks ~ ~128 ~32 ~31 ~154 ~63 1001 1 1001 all run function tid:dungeon/nature/select_biome
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~ ~-8 ~-25 if blocks ~ ~128 ~ ~31 ~154 ~31 1001 1 1001 all if blocks ~32 ~128 ~ ~63 ~154 ~31 1001 1 1001 all if blocks ~32 ~128 ~32 ~63 ~154 ~63 1001 1 1001 all if blocks ~ ~128 ~32 ~31 ~154 ~63 1001 1 1001 all run function tid:dungeon/nature/select_biome
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~ ~-8 ~-38 if blocks ~ ~128 ~ ~31 ~154 ~31 1001 1 1001 all if blocks ~32 ~128 ~ ~63 ~154 ~31 1001 1 1001 all if blocks ~32 ~128 ~32 ~63 ~154 ~63 1001 1 1001 all if blocks ~ ~128 ~32 ~31 ~154 ~63 1001 1 1001 all run function tid:dungeon/nature/select_biome
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~ ~-8 ~-51 if blocks ~ ~128 ~ ~31 ~154 ~31 1001 1 1001 all if blocks ~32 ~128 ~ ~63 ~154 ~31 1001 1 1001 all if blocks ~32 ~128 ~32 ~63 ~154 ~63 1001 1 1001 all if blocks ~ ~128 ~32 ~31 ~154 ~63 1001 1 1001 all run function tid:dungeon/nature/select_biome

execute if score @s failed matches 1.. if predicate tid:random_25 positioned ~1 ~-1 ~-13 if blocks ~ ~128 ~ ~16 ~137 ~16 1001 1 1001 all run function tid:dungeon/nature/select_end
