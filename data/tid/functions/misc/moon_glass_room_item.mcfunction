#Birch sapling
execute if predicate tid:random_30 run setblock ~ ~ ~ granite
execute if block ~ ~ ~ granite run setblock ~ ~1 ~ potted_birch_sapling

#Birch leaves
execute if predicate tid:random_05 run setblock ~ ~ ~ birch_leaves[persistent=true]
execute if block ~ ~ ~ birch_leaves run setblock ~ ~1 ~ birch_leaves[persistent=true]

#End stone
execute if predicate tid:random_10 run setblock ~ ~ ~ end_stone
execute if block ~ ~ ~ end_stone run setblock ~ ~1 ~ end_stone
execute if block ~ ~ ~ end_stone if predicate tid:random_30 run setblock ~ ~2 ~ end_stone

#Chest
execute if predicate tid:random_15 run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/moon"}
execute if predicate tid:random_15 run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/moon"}
execute if block ~ ~ ~ chest run setblock ~ ~1 ~ air
execute if block ~ ~ ~ chest run setblock ~ ~2 ~ air