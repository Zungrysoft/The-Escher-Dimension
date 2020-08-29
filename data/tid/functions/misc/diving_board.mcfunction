#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Generate the "diving board"
fill ~9 ~8 ~ ~16 ~8 ~2 nether_bricks replace air

#Maybe generate a chest on top
execute if predicate tid:random_60 if block ~1 ~9 ~1 air run setblock ~1 ~9 ~1 chest[facing=east]{LootTable: "tid:chests/station"}