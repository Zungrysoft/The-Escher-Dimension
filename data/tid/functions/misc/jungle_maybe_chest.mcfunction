#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide whether to generate a chest
execute if predicate tid:random_20 if block ~-1 ~ ~ #tid:jungle_blocks run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/jungle"}
execute if predicate tid:random_20 if block ~1 ~ ~ #tid:jungle_blocks run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/jungle"}
execute if predicate tid:random_20 if block ~ ~ ~-1 #tid:jungle_blocks run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/jungle"}
execute if predicate tid:random_20 if block ~ ~ ~1 #tid:jungle_blocks run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/jungle"}