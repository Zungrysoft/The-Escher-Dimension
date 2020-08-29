#Remove the ladders that are normally in the room
fill ~1 ~ ~1 ~-7 ~3 ~-7 air replace ladder

#Place the ladder loot chest
setblock ~-3 ~ ~-3 chest{LootTable: "tid:chests/stronghold2_ladders"}