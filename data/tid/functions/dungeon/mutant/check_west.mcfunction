function tid:dungeon/mutant/room_checks

execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-11 ~-3 ~-5 if blocks ~ ~128 ~ ~10 ~136 ~10 1001 1 1001 all run function tid:dungeon/mutant/select_small
execute unless score @s failed matches 1.. if predicate tid:random_08 positioned ~-7 ~-3 ~-3 if blocks ~ ~128 ~ ~6 ~144 ~6 1001 1 1001 all run function tid:dungeon/mutant/select_tall
execute unless score @s failed matches 1.. if predicate tid:random_10 positioned ~-17 ~-2 ~-2 if blocks ~ ~128 ~ ~16 ~132 ~4 1001 1 1001 all run function tid:dungeon/mutant/select_bridge_west
execute unless score @s failed matches 1.. if predicate tid:random_02 positioned ~-19 ~-3 ~-9 if blocks ~ ~128 ~ ~18 ~138 ~18 1001 1 1001 all run function tid:dungeon/mutant/select_arena

#Ensures enough arenas generate
execute unless score @s failed matches 1.. if score mutant_arenas value matches ..1 if score mutant_rooms value matches ..50 positioned ~-19 ~-3 ~-9 if blocks ~ ~128 ~ ~18 ~138 ~18 1001 1 1001 all run function tid:dungeon/mutant/select_arena

execute if score @s failed matches 1.. if predicate tid:random_50 positioned ~-4 ~-2 ~-2 if blocks ~ ~128 ~ ~3 ~134 ~4 1001 1 1001 all run function tid:dungeon/mutant/select_closet_west
