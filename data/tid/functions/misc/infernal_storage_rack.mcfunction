#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Place the objects
execute if predicate tid:random_75 positioned ~1 ~1 ~0 run function tid:misc/infernal_storage_rack_item
execute if predicate tid:random_75 positioned ~1 ~1 ~1 run function tid:misc/infernal_storage_rack_item
execute if predicate tid:random_75 positioned ~1 ~1 ~2 run function tid:misc/infernal_storage_rack_item
execute if predicate tid:random_75 positioned ~1 ~1 ~3 run function tid:misc/infernal_storage_rack_item
