#Decide what block to put on top
setblock ~ ~ ~ chiseled_polished_blackstone
execute if predicate tid:random_50 run setblock ~ ~ ~ polished_blackstone_brick_stairs[facing=north]
execute if predicate tid:random_33 run setblock ~ ~ ~ polished_blackstone_brick_stairs[facing=south]
execute if predicate tid:random_25 run setblock ~ ~ ~ polished_blackstone_brick_stairs[facing=west]
execute if predicate tid:random_20 run setblock ~ ~ ~ polished_blackstone_brick_stairs[facing=east]
execute if predicate tid:random_15 run setblock ~ ~ ~ blackstone

#Build the pillar
execute positioned ~ ~-1 ~ if block ~ ~ ~ #tid:air_or_liquid run function tid:misc/sin_chambers_lava_lake_item_pillar_block
execute positioned ~ ~-2 ~ if block ~ ~ ~ #tid:air_or_liquid run function tid:misc/sin_chambers_lava_lake_item_pillar_block
execute positioned ~ ~-3 ~ if block ~ ~ ~ #tid:air_or_liquid run function tid:misc/sin_chambers_lava_lake_item_pillar_block
execute positioned ~ ~-4 ~ if block ~ ~ ~ #tid:air_or_liquid run function tid:misc/sin_chambers_lava_lake_item_pillar_block
execute positioned ~ ~-5 ~ if block ~ ~ ~ #tid:air_or_liquid run function tid:misc/sin_chambers_lava_lake_item_pillar_block
