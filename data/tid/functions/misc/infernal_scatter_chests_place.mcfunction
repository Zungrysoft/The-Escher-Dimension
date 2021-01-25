#Generate a chest facing away from a wall
execute if predicate tid:random_90 unless block ~ ~-1 ~ bedrock if block ~1 ~ ~ air run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/infernal"}
execute if predicate tid:random_50 unless block ~ ~-1 ~ bedrock if block ~-1 ~ ~ air run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/infernal"}
execute if predicate tid:random_33 unless block ~ ~-1 ~ bedrock if block ~ ~ ~1 air run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/infernal"}
execute if predicate tid:random_25 unless block ~ ~-1 ~ bedrock if block ~ ~ ~-1 air run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/infernal"}

#Mark it on the map
execute if block ~ ~ ~ chest run function tid:misc/infernal_mark_chest
