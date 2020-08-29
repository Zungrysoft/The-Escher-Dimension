#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide whether to generate a chest
execute if predicate tid:random_05 run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/infernal"}