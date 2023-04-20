#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide whether to generate a chest
execute if predicate tid:random_25 run setblock ~ ~ ~ minecraft:blackstone
execute if predicate tid:random_25 if block ~-1 ~ ~ #tid:red_sandstone_blocks run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/sand2"}
execute if predicate tid:random_25 if block ~1 ~ ~ #tid:red_sandstone_blocks run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/sand2"}
execute if predicate tid:random_25 if block ~ ~ ~-1 #tid:red_sandstone_blocks run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/sand2"}
execute if predicate tid:random_25 if block ~ ~ ~1 #tid:red_sandstone_blocks run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/sand2"}