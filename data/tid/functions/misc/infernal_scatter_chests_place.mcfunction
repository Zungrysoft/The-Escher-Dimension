#Generate a chest facing away from a wall
execute if predicate tid:random_90 if block ~1 ~ ~ air run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/infernal"}
execute if predicate tid:random_50 if block ~-1 ~ ~ air run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/infernal"}
execute if predicate tid:random_33 if block ~ ~ ~1 air run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/infernal"}
execute if predicate tid:random_25 if block ~ ~ ~-1 air run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/infernal"}

#Mark it on the map
execute if block ~ ~ ~ chest run function tid:misc/infernal_mark_chest
