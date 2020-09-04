#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide whether to generate a chest
execute if predicate tid:random_20 if block ~ ~ ~-1 red_nether_bricks run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/station"}
execute if predicate tid:random_33 if block ~ ~ ~1 red_nether_bricks run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/station"}

execute if block ~ ~ ~ chest if block ~ ~ ~-1 red_nether_bricks run setblock ~ ~-1 ~ red_nether_brick_stairs[facing=north,half=top]
execute if block ~ ~ ~ chest if block ~ ~ ~1 red_nether_bricks run setblock ~ ~-1 ~ red_nether_brick_stairs[facing=south,half=top]