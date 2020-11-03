#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide whether to generate a chest
execute if predicate tid:random_07 run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/mutant"}
execute if predicate tid:random_07 run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/mutant"}
execute if predicate tid:random_07 run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/mutant"}
execute if predicate tid:random_07 run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/mutant"}