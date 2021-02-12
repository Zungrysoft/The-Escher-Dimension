#Generate a chest facing away from a wall
execute if predicate tid:random_90 if block ~1 ~ ~ air if block ~ ~-1 ~ #tid:blackstone_blocks run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/sin_chambers_depths"}
execute if predicate tid:random_50 if block ~-1 ~ ~ air if block ~ ~-1 ~ #tid:blackstone_blocks run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/sin_chambers_depths"}
execute if predicate tid:random_33 if block ~ ~ ~1 air if block ~ ~-1 ~ #tid:blackstone_blocks run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/sin_chambers_depths"}
execute if predicate tid:random_25 if block ~ ~ ~-1 air if block ~ ~-1 ~ #tid:blackstone_blocks run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/sin_chambers_depths"}

#Place a magma block to signify that it is special
execute if block ~ ~ ~ chest run setblock ~ ~1 ~ glowstone

#If a chest was successfully generated, remove from the score
execute if block ~ ~ ~ chest run scoreboard players remove temp value 1000
