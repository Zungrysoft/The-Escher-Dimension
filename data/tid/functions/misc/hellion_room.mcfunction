#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Maybe generate a chest on top
execute if predicate tid:random_25 run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/hellion"}

execute if predicate tid:random_04 run function tid:misc/hellion_gold_band
execute if predicate tid:random_01 run function tid:misc/hellion_quartz_band