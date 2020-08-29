#Delete the command block
fill ~ ~1 ~ ~ ~ ~ red_nether_bricks

#Decide whether to put in a chest
execute if predicate tid:random_05 run setblock ~ ~ ~ chest{LootTable: "tid:chests/station_secret",CustomName:"\"Secret Chest\""}