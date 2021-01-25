function tid:dungeon/infernal/tower/room_checks
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~0 ~-2 ~-3 if blocks ~ ~128 ~ ~6 ~136 ~6 1001 1 1001 all run function tid:dungeon/infernal/tower/select_tall_small
execute unless score @s failed matches 1.. if predicate tid:random_10 if block ~ ~-2 ~7 #tid:infernal_blocks positioned ~ ~-2 ~-6 if blocks ~ ~128 ~ ~12 ~136 ~12 1001 1 1001 all run function tid:dungeon/infernal/tower/select_tall_medium

scoreboard players set success value 0
execute unless score @s failed matches 1.. if predicate tid:random_10 run function tid:dungeon/infernal/tower/check_stairs
execute if predicate tid:random_33 if score success value matches 1 positioned ~0 ~-2 ~-3 if blocks ~ ~128 ~ ~6 ~140 ~6 1001 1 1001 all run function tid:dungeon/infernal/tower/select_tall_stairs_short
execute if score success value matches 1 positioned ~0 ~-2 ~-3 if blocks ~ ~128 ~ ~6 ~144 ~6 1001 1 1001 all run function tid:dungeon/infernal/tower/select_tall_stairs_tall
