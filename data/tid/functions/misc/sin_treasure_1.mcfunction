#Destroy the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Generate some ruins
execute if predicate tid:random_40 run function tid:misc/sin_treasure_1_ruins
execute if predicate tid:random_40 run function tid:misc/sin_treasure_1_ruins
execute if predicate tid:random_40 run function tid:misc/sin_treasure_1_ruins
execute if predicate tid:random_40 run function tid:misc/sin_treasure_1_ruins
execute if predicate tid:random_40 run function tid:misc/sin_treasure_1_ruins
execute if predicate tid:random_40 run function tid:misc/sin_treasure_1_ruins
execute if predicate tid:random_40 run function tid:misc/sin_treasure_1_ruins
execute if predicate tid:random_40 run function tid:misc/sin_treasure_1_ruins
execute if predicate tid:random_40 run function tid:misc/sin_treasure_1_ruins
execute if predicate tid:random_40 run function tid:misc/sin_treasure_1_ruins

#Place the chest
setblock ~-11 ~2 ~ chest[facing=east]{LootTable: "tid:chests/sin_chambers"}

