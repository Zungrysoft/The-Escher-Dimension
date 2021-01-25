#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Generate a chest in a random orientation
execute if predicate tid:random_25 run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/infernal"}
execute if predicate tid:random_33 run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/infernal"}
execute if predicate tid:random_50 run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/infernal"}
setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/infernal"}

#Mark it on the map
function tid:misc/infernal_mark_chest
