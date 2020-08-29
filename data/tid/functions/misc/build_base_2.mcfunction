#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Randomly pick items for the base
execute if predicate tid:random_30 run setblock ~ ~ ~1 furnace[facing=east]
execute if predicate tid:random_08 run setblock ~ ~ ~1 blast_furnace[facing=east]
execute if predicate tid:random_15 run setblock ~ ~ ~1 crafting_table
execute if predicate tid:random_20 run setblock ~ ~ ~1 barrel{LootTable: "tid:chests/brick"}
execute if predicate tid:random_03 run setblock ~ ~ ~1 glowstone
execute if predicate tid:random_02 run setblock ~ ~ ~1 smithing_table
execute if predicate tid:random_005 run setblock ~ ~ ~1 tnt

execute if predicate tid:random_30 run setblock ~ ~ ~2 furnace[facing=east]
execute if predicate tid:random_08 run setblock ~ ~ ~2 blast_furnace[facing=east]
execute if predicate tid:random_15 run setblock ~ ~ ~2 crafting_table
execute if predicate tid:random_20 run setblock ~ ~ ~2 barrel{LootTable: "tid:chests/brick"}
execute if predicate tid:random_03 run setblock ~ ~ ~2 glowstone
execute if predicate tid:random_02 run setblock ~ ~ ~2 smithing_table
execute if predicate tid:random_005 run setblock ~ ~ ~2 tnt

execute if predicate tid:random_30 run setblock ~ ~ ~3 furnace[facing=east]
execute if predicate tid:random_08 run setblock ~ ~ ~3 blast_furnace[facing=east]
execute if predicate tid:random_15 run setblock ~ ~ ~3 crafting_table
execute if predicate tid:random_20 run setblock ~ ~ ~3 barrel{LootTable: "tid:chests/brick"}
execute if predicate tid:random_03 run setblock ~ ~ ~3 glowstone
execute if predicate tid:random_02 run setblock ~ ~ ~3 smithing_table
execute if predicate tid:random_005 run setblock ~ ~ ~3 tnt

execute if predicate tid:random_30 run setblock ~ ~ ~4 furnace[facing=east]
execute if predicate tid:random_08 run setblock ~ ~ ~4 blast_furnace[facing=east]
execute if predicate tid:random_15 run setblock ~ ~ ~4 crafting_table
execute if predicate tid:random_20 run setblock ~ ~ ~4 barrel{LootTable: "tid:chests/brick"}
execute if predicate tid:random_03 run setblock ~ ~ ~4 glowstone
execute if predicate tid:random_02 run setblock ~ ~ ~4 smithing_table
execute if predicate tid:random_005 run setblock ~ ~ ~4 tnt
