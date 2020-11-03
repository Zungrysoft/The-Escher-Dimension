function tid:dungeon/station/room_checks

execute if predicate tid:random_04 run scoreboard players set @s failed 1

execute unless score @s failed matches 1.. if predicate tid:random_15 positioned ~-7 ~1 ~-5 if blocks ~ ~128 ~ ~14 ~136 ~10 1033 1 1033 all run function tid:dungeon/station/select_stack_up
