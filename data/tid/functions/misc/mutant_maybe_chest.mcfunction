#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide whether to generate a chest
execute if predicate tid:random_33 if block ~-1 ~ ~ warped_planks run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/mutant"}
execute if predicate tid:random_33 if block ~1 ~ ~ warped_planks run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/mutant"}
execute if predicate tid:random_33 if block ~ ~ ~-1 warped_planks run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/mutant"}
execute if predicate tid:random_33 if block ~ ~ ~1 warped_planks run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/mutant"}

execute if predicate tid:random_33 if block ~-1 ~ ~ dark_prismarine run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/mutant"}
execute if predicate tid:random_33 if block ~1 ~ ~ dark_prismarine run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/mutant"}
execute if predicate tid:random_33 if block ~ ~ ~-1 dark_prismarine run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/mutant"}
execute if predicate tid:random_33 if block ~ ~ ~1 dark_prismarine run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/mutant"}

execute if predicate tid:random_33 if block ~-1 ~ ~ prismarine_bricks run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/mutant"}
execute if predicate tid:random_33 if block ~1 ~ ~ prismarine_bricks run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/mutant"}
execute if predicate tid:random_33 if block ~ ~ ~-1 prismarine_bricks run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/mutant"}
execute if predicate tid:random_33 if block ~ ~ ~1 prismarine_bricks run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/mutant"}

