function tid:dungeon/moon/room_checks

execute if predicate tid:random_15 run scoreboard players set @s failed 1

execute unless score @s failed matches 1.. if predicate tid:random_60 if blocks ~ ~128 ~ ~3 ~140 ~7 1001 1 1033 all run function tid:dungeon/moon/select_tower
execute if score @s failed matches 1.. if blocks ~ ~128 ~ ~3 ~134 ~7 1001 1 1033 all run function tid:dungeon/moon/select_towertop
