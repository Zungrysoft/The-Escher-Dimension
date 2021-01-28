#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide whether to generate a chest
execute if predicate tid:random_10 if block ~-1 ~ ~ stone_bricks run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/ice"}
execute if predicate tid:random_10 if block ~1 ~ ~ stone_bricks run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/ice"}
execute if predicate tid:random_10 if block ~ ~ ~-1 stone_bricks run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/ice"}
execute if predicate tid:random_10 if block ~ ~ ~1 stone_bricks run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/ice"}

execute if predicate tid:random_10 if block ~-1 ~ ~ cobblestone run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/ice"}
execute if predicate tid:random_10 if block ~1 ~ ~ cobblestone run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/ice"}
execute if predicate tid:random_10 if block ~ ~ ~-1 cobblestone run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/ice"}
execute if predicate tid:random_10 if block ~ ~ ~1 cobblestone run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/ice"}

execute if predicate tid:random_10 if block ~-1 ~ ~ polished_basalt run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/ice"}
execute if predicate tid:random_10 if block ~1 ~ ~ polished_basalt run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/ice"}
execute if predicate tid:random_10 if block ~ ~ ~-1 polished_basalt run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/ice"}
execute if predicate tid:random_10 if block ~ ~ ~1 polished_basalt run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/ice"}
