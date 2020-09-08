#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Maybe add a lava pool
execute if predicate tid:random_33 run fill ~2 ~-1 ~1 ~-2 ~-1 ~-1 lava

#Maybe add a spawner
execute if predicate tid:random_33 run function tid:misc/infernal_factory_random_spawner

#Maybe add a chest
execute if predicate tid:random_10 run setblock ~ ~ ~ chest{LootTable: "tid:chests/infernal"}

#Put in a block underneath
execute unless block ~ ~ ~ air run setblock ~ ~-1 ~ chiseled_nether_bricks

#Randomize the piles of dirt
execute if predicate tid:random_001 positioned ~-3 ~ ~3 run setblock ~ ~ ~ coarse_dirt
execute if predicate tid:random_50 positioned ~-3 ~ ~3 run setblock ~ ~ ~1 coarse_dirt
execute if predicate tid:random_50 positioned ~-3 ~ ~3 run setblock ~-1 ~1 ~2 coarse_dirt
execute if predicate tid:random_50 positioned ~-3 ~ ~3 run setblock ~-3 ~1 ~1 coarse_dirt
execute if predicate tid:random_50 positioned ~-3 ~ ~3 run setblock ~-4 ~1 ~2 coarse_dirt
execute if predicate tid:random_50 positioned ~-3 ~ ~3 run setblock ~-2 ~2 ~2 coarse_dirt

execute positioned ~3 ~ ~3 run function tid:misc/infernal_factory_dirt_pile
execute positioned ~3 ~ ~-5 run function tid:misc/infernal_factory_dirt_pile
execute positioned ~-7 ~ ~-5 run function tid:misc/infernal_factory_dirt_pile