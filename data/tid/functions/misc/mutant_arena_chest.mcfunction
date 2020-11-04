#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide whether to generate a chest
execute if predicate tid:random_25 run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/mutant_arena"}
execute if predicate tid:random_33 run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/mutant_arena"}
execute if predicate tid:random_50 run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/mutant_arena"}
setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/mutant_arena"}

#Add the emerald
setblock ~ ~1 ~ emerald_block