#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide whether to generate a chest
execute if predicate tid:random_02 run setblock ~ ~1 ~ chest[facing=north]{LootTable: "tid:chests/infernal"}
execute if predicate tid:random_02 run setblock ~ ~1 ~ chest[facing=south]{LootTable: "tid:chests/infernal"}
execute if predicate tid:random_02 run setblock ~ ~1 ~ chest[facing=east]{LootTable: "tid:chests/infernal"}
execute if predicate tid:random_02 run setblock ~ ~1 ~ chest[facing=west]{LootTable: "tid:chests/infernal"}

execute if block ~ ~1 ~ chest run setblock ~ ~ ~ chiseled_nether_bricks