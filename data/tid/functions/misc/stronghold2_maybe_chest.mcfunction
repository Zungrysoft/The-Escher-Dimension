#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide whether to generate a chest
execute if predicate tid:random_20 if block ~-1 ~ ~ stone_bricks run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/stronghold2"}
execute if predicate tid:random_20 if block ~1 ~ ~ stone_bricks run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/stronghold2"}
execute if predicate tid:random_20 if block ~ ~ ~-1 stone_bricks run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/stronghold2"}
execute if predicate tid:random_20 if block ~ ~ ~1 stone_bricks run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/stronghold2"}