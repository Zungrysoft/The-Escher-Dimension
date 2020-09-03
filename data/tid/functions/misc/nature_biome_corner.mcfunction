#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

setblock ~ ~ ~ potted_acacia_sapling
execute if predicate tid:random_60 run setblock ~ ~ ~ potted_allium
execute if predicate tid:random_40 run setblock ~ ~ ~ potted_azure_bluet
execute if predicate tid:random_25 run setblock ~ ~ ~ potted_bamboo
execute if predicate tid:random_20 run setblock ~ ~ ~ potted_birch_sapling
execute if predicate tid:random_20 run setblock ~ ~ ~ potted_blue_orchid
execute if predicate tid:random_15 run setblock ~ ~ ~ potted_brown_mushroom
execute if predicate tid:random_10 run setblock ~ ~ ~ potted_cactus
execute if predicate tid:random_10 run setblock ~ ~ ~ potted_cornflower
execute if predicate tid:random_10 run setblock ~ ~ ~ potted_crimson_fungus
execute if predicate tid:random_08 run setblock ~ ~ ~ potted_crimson_roots
execute if predicate tid:random_08 run setblock ~ ~ ~ potted_dandelion
execute if predicate tid:random_08 run setblock ~ ~ ~ potted_dark_oak_sapling
execute if predicate tid:random_07 run setblock ~ ~ ~ potted_dead_bush
execute if predicate tid:random_07 run setblock ~ ~ ~ potted_fern
execute if predicate tid:random_06 run setblock ~ ~ ~ potted_jungle_sapling
execute if predicate tid:random_06 run setblock ~ ~ ~ potted_lily_of_the_valley
execute if predicate tid:random_06 run setblock ~ ~ ~ potted_oak_sapling
execute if predicate tid:random_06 run setblock ~ ~ ~ potted_orange_tulip
execute if predicate tid:random_05 run setblock ~ ~ ~ potted_oxeye_daisy
execute if predicate tid:random_05 run setblock ~ ~ ~ potted_pink_tulip
execute if predicate tid:random_05 run setblock ~ ~ ~ potted_poppy
execute if predicate tid:random_05 run setblock ~ ~ ~ potted_red_mushroom
execute if predicate tid:random_05 run setblock ~ ~ ~ potted_red_tulip
execute if predicate tid:random_04 run setblock ~ ~ ~ potted_spruce_sapling
execute if predicate tid:random_04 run setblock ~ ~ ~ potted_warped_fungus
execute if predicate tid:random_04 run setblock ~ ~ ~ potted_warped_roots
execute if predicate tid:random_04 run setblock ~ ~ ~ potted_white_tulip
execute if predicate tid:random_02 run setblock ~ ~ ~ potted_wither_rose

#Decide whether to generate a chest
execute if predicate tid:random_03 if block ~-1 ~ ~ spruce_planks run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/nature"}
execute if predicate tid:random_03 if block ~1 ~ ~ spruce_planks run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/nature"}
execute if predicate tid:random_03 if block ~ ~ ~-1 spruce_planks run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/nature"}
execute if predicate tid:random_03 if block ~ ~ ~1 spruce_planks run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/nature"}






