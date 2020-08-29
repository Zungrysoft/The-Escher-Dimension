#Put in gravel at random
execute if predicate tid:random_33 run setblock ~-2 ~2 ~-1 gravel
execute unless predicate tid:random_50 run setblock ~-2 ~2 ~-2 gravel
execute unless predicate tid:random_50 run setblock ~-2 ~2 ~-3 gravel
execute unless predicate tid:random_50 run setblock ~-2 ~2 ~-4 gravel
execute if predicate tid:random_33 run setblock ~-2 ~2 ~-5 gravel

execute unless predicate tid:random_50 run setblock ~-3 ~2 ~-1 gravel
execute unless predicate tid:random_50 run setblock ~-3 ~2 ~-2 gravel
execute unless predicate tid:random_50 run setblock ~-3 ~2 ~-3 gravel
execute unless predicate tid:random_50 run setblock ~-3 ~2 ~-4 gravel
execute unless predicate tid:random_50 run setblock ~-3 ~2 ~-5 gravel
execute unless predicate tid:random_50 run setblock ~-3 ~3 ~-2 gravel
execute unless predicate tid:random_50 run setblock ~-3 ~3 ~-3 gravel
execute unless predicate tid:random_50 run setblock ~-3 ~3 ~-4 gravel

execute unless predicate tid:random_50 run setblock ~-4 ~2 ~-1 gravel
execute unless predicate tid:random_50 run setblock ~-4 ~2 ~-2 gravel
execute unless predicate tid:random_50 run setblock ~-4 ~2 ~-3 gravel
execute unless predicate tid:random_50 run setblock ~-4 ~2 ~-4 gravel
execute unless predicate tid:random_50 run setblock ~-4 ~2 ~-5 gravel
execute unless predicate tid:random_50 run setblock ~-4 ~3 ~-1 gravel
execute unless predicate tid:random_50 run setblock ~-4 ~3 ~-2 gravel
execute unless predicate tid:random_50 run setblock ~-4 ~3 ~-3 gravel
execute unless predicate tid:random_50 run setblock ~-4 ~3 ~-4 gravel
execute unless predicate tid:random_50 run setblock ~-4 ~3 ~-5 gravel

execute unless predicate tid:random_50 run setblock ~-5 ~2 ~-1 gravel
execute unless predicate tid:random_50 run setblock ~-5 ~2 ~-2 gravel
execute unless predicate tid:random_50 run setblock ~-5 ~2 ~-3 gravel
execute unless predicate tid:random_50 run setblock ~-5 ~2 ~-4 gravel
execute unless predicate tid:random_50 run setblock ~-5 ~2 ~-5 gravel
execute unless predicate tid:random_50 run setblock ~-5 ~3 ~-2 gravel
execute unless predicate tid:random_50 run setblock ~-5 ~3 ~-3 gravel
execute unless predicate tid:random_50 run setblock ~-5 ~3 ~-4 gravel

execute if predicate tid:random_33 run setblock ~-6 ~2 ~-1 gravel
execute unless predicate tid:random_50 run setblock ~-6 ~2 ~-2 gravel
execute unless predicate tid:random_50 run setblock ~-6 ~2 ~-3 gravel
execute unless predicate tid:random_50 run setblock ~-6 ~2 ~-4 gravel
execute if predicate tid:random_33 run setblock ~-6 ~2 ~-5 gravel

#Schedule the hiding of gold for after the gravel has settled
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"gravel_treasure\""}
schedule function tid:misc/gravel_treasure 20 replace

#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air