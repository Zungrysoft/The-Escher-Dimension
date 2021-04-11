#Grass block
setblock ~ ~ ~ grass_block

#Grass plants
execute if predicate tid:random_80 run setblock ~ ~1 ~ grass
execute if predicate tid:random_20 run setblock ~ ~1 ~ fern
execute if predicate tid:random_05 run setblock ~ ~1 ~ red_mushroom
execute if predicate tid:random_05 run setblock ~ ~1 ~ brown_mushroom
execute if predicate tid:random_03 run setblock ~ ~1 ~ lily_of_the_valley
execute if predicate tid:random_04 run setblock ~ ~1 ~ dandelion
execute if predicate tid:random_01 run setblock ~ ~1 ~ oxeye_daisy
execute if predicate tid:random_003 run setblock ~ ~1 ~ barrel[facing=up]{LootTable: "tid:chests/stronghold2_barrel"}
