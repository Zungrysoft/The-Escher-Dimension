#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Randomly pick items for the base
execute if predicate tid:random_60 run setblock ~1 ~ ~ furnace[facing=west]
execute if predicate tid:random_20 run setblock ~1 ~ ~ blast_furnace[facing=west]

execute if predicate tid:random_30 run setblock ~1 ~ ~-1 furnace[facing=west]
execute if predicate tid:random_15 run setblock ~1 ~ ~-1 blast_furnace[facing=west]
execute if predicate tid:random_01 run setblock ~1 ~ ~-1 tnt
execute if predicate tid:random_20 run setblock ~1 ~ ~-1 chest[facing=west]{LootTable: "tid:chests/brick"}

execute if predicate tid:random_30 run setblock ~ ~ ~1 furnace
execute if predicate tid:random_15 run setblock ~ ~ ~1 blast_furnace

execute if predicate tid:random_08 run setblock ~-1 ~ ~1 grindstone[face=floor]
execute if predicate tid:random_05 run setblock ~-1 ~ ~1 grindstone[facing=west]
execute if predicate tid:random_01 run setblock ~-1 ~ ~1 tnt
execute if predicate tid:random_40 run setblock ~-1 ~ ~1 chest{LootTable: "tid:chests/brick"}