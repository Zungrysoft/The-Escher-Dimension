function tid:dungeon/sin/land_check_tries
execute unless score @s failed matches 1.. if predicate tid:random_20 positioned ~1 ~-1 ~-14 if block ~15 ~-128 ~15 orange_wool run function tid:dungeon/sin/pool_select
execute unless score @s failed matches 1.. if predicate tid:random_03 positioned ~1 ~-1 ~-14 if block ~15 ~-128 ~15 orange_wool run function tid:dungeon/sin/land_select