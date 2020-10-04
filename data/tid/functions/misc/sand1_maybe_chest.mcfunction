#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide whether to generate a chest
execute if predicate tid:random_10 if block ~-1 ~ ~ cut_sandstone run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/sand1"}
execute if predicate tid:random_10 if block ~1 ~ ~ cut_sandstone run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/sand1"}
execute if predicate tid:random_10 if block ~ ~ ~-1 cut_sandstone run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/sand1"}
execute if predicate tid:random_10 if block ~ ~ ~1 cut_sandstone run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/sand1"}