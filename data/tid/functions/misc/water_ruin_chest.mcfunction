#Clear the area above
fill ~ ~ ~ ~ ~3 ~ air replace #tid:coral_grow

#Build the chest in a random direction
setblock ~ ~ ~ chest[facing=north,waterlogged=true]{LootTable: "tid:chests/jungle_water"}
execute if predicate tid:random_50 run setblock ~ ~ ~ chest[facing=south,waterlogged=true]{LootTable: "tid:chests/jungle_water"}
execute if predicate tid:random_33 run setblock ~ ~ ~ chest[facing=west,waterlogged=true]{LootTable: "tid:chests/jungle_water"}
execute if predicate tid:random_25 run setblock ~ ~ ~ chest[facing=east,waterlogged=true]{LootTable: "tid:chests/jungle_water"}

#Kill the marker
kill @s
