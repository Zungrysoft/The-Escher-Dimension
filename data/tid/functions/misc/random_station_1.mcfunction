#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Randomly pick item for the base
execute if predicate tid:random_70 run setblock ~ ~ ~ furnace[facing=south]
execute if predicate tid:random_20 run setblock ~ ~ ~ blast_furnace[facing=south]
execute if predicate tid:random_15 run setblock ~ ~ ~ crafting_table
execute if predicate tid:random_25 run setblock ~ ~ ~ smithing_table
execute if predicate tid:random_15 run setblock ~ ~ ~ chipped_anvil[facing=west]
execute if predicate tid:random_10 run setblock ~ ~ ~ anvil[facing=east]
execute if predicate tid:random_15 run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/station"}