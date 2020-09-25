#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

execute if predicate tid:random_10 run setblock ~ ~ ~ brewing_stand

#Decide whether to generate a blast furnace
execute if predicate tid:random_10 if block ~-1 ~ ~ dark_prismarine run setblock ~ ~ ~ blast_furnace[facing=east]
execute if predicate tid:random_10 if block ~1 ~ ~ dark_prismarine run setblock ~ ~ ~ blast_furnace[facing=west]
execute if predicate tid:random_10 if block ~ ~ ~-1 dark_prismarine run setblock ~ ~ ~ blast_furnace[facing=south]
execute if predicate tid:random_10 if block ~ ~ ~1 dark_prismarine run setblock ~ ~ ~ blast_furnace[facing=north]

execute if predicate tid:random_10 if block ~-1 ~ ~ purpur_pillar run setblock ~ ~ ~ blast_furnace[facing=east]
execute if predicate tid:random_10 if block ~1 ~ ~ purpur_pillar run setblock ~ ~ ~ blast_furnace[facing=west]
execute if predicate tid:random_10 if block ~ ~ ~-1 purpur_pillar run setblock ~ ~ ~ blast_furnace[facing=south]
execute if predicate tid:random_10 if block ~ ~ ~1 purpur_pillar run setblock ~ ~ ~ blast_furnace[facing=north]

execute if predicate tid:random_10 if block ~-1 ~ ~ purpur_block run setblock ~ ~ ~ blast_furnace[facing=east]
execute if predicate tid:random_10 if block ~1 ~ ~ purpur_block run setblock ~ ~ ~ blast_furnace[facing=west]
execute if predicate tid:random_10 if block ~ ~ ~-1 purpur_block run setblock ~ ~ ~ blast_furnace[facing=south]
execute if predicate tid:random_10 if block ~ ~ ~1 purpur_block run setblock ~ ~ ~ blast_furnace[facing=north]

#Decide whether to generate a smoker
execute if predicate tid:random_10 if block ~-1 ~ ~ dark_prismarine run setblock ~ ~ ~ smoker[facing=east]
execute if predicate tid:random_10 if block ~1 ~ ~ dark_prismarine run setblock ~ ~ ~ smoker[facing=west]
execute if predicate tid:random_10 if block ~ ~ ~-1 dark_prismarine run setblock ~ ~ ~ smoker[facing=south]
execute if predicate tid:random_10 if block ~ ~ ~1 dark_prismarine run setblock ~ ~ ~ smoker[facing=north]

execute if predicate tid:random_10 if block ~-1 ~ ~ purpur_pillar run setblock ~ ~ ~ smoker[facing=east]
execute if predicate tid:random_10 if block ~1 ~ ~ purpur_pillar run setblock ~ ~ ~ smoker[facing=west]
execute if predicate tid:random_10 if block ~ ~ ~-1 purpur_pillar run setblock ~ ~ ~ smoker[facing=south]
execute if predicate tid:random_10 if block ~ ~ ~1 purpur_pillar run setblock ~ ~ ~ smoker[facing=north]

execute if predicate tid:random_10 if block ~-1 ~ ~ purpur_block run setblock ~ ~ ~ smoker[facing=east]
execute if predicate tid:random_10 if block ~1 ~ ~ purpur_block run setblock ~ ~ ~ smoker[facing=west]
execute if predicate tid:random_10 if block ~ ~ ~-1 purpur_block run setblock ~ ~ ~ smoker[facing=south]
execute if predicate tid:random_10 if block ~ ~ ~1 purpur_block run setblock ~ ~ ~ smoker[facing=north]

#Decide whether to generate a chest
execute if predicate tid:random_20 if block ~-1 ~ ~ dark_prismarine run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/neon"}
execute if predicate tid:random_20 if block ~1 ~ ~ dark_prismarine run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/neon"}
execute if predicate tid:random_20 if block ~ ~ ~-1 dark_prismarine run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/neon"}
execute if predicate tid:random_20 if block ~ ~ ~1 dark_prismarine run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/neon"}

execute if predicate tid:random_20 if block ~-1 ~ ~ purpur_pillar run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/neon"}
execute if predicate tid:random_20 if block ~1 ~ ~ purpur_pillar run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/neon"}
execute if predicate tid:random_20 if block ~ ~ ~-1 purpur_pillar run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/neon"}
execute if predicate tid:random_20 if block ~ ~ ~1 purpur_pillar run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/neon"}

execute if predicate tid:random_20 if block ~-1 ~ ~ purpur_block run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/neon"}
execute if predicate tid:random_20 if block ~1 ~ ~ purpur_block run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/neon"}
execute if predicate tid:random_20 if block ~ ~ ~-1 purpur_block run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/neon"}
execute if predicate tid:random_20 if block ~ ~ ~1 purpur_block run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/neon"}