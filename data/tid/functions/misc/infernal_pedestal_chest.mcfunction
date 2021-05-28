#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide whether to generate a chest
execute if predicate tid:random_10 run setblock ~ ~1 ~ chest[facing=north]{LootTable: "tid:chests/infernal"}
execute if predicate tid:random_10 run setblock ~ ~1 ~ chest[facing=south]{LootTable: "tid:chests/infernal"}
execute if predicate tid:random_10 run setblock ~ ~1 ~ chest[facing=east]{LootTable: "tid:chests/infernal"}
execute if predicate tid:random_10 run setblock ~ ~1 ~ chest[facing=west]{LootTable: "tid:chests/infernal"}

execute if block ~ ~1 ~ chest run setblock ~ ~ ~ chiseled_nether_bricks
execute if block ~ ~1 ~ chest run setblock ~ ~-1 ~ nether_bricks
execute if block ~ ~1 ~ chest run function tid:misc/infernal_mark_chest
