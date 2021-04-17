#Delete the Command Block
setblock ~ ~ ~ air
setblock ~ ~1 ~ polished_blackstone_slab[type=top]

#Decide which object to place
setblock ~ ~ ~ stonecutter
execute if predicate tid:random_50 run setblock ~ ~ ~ minecraft:grindstone[face=floor]
execute if predicate tid:random_33 run setblock ~ ~ ~ minecraft:campfire[lit=false]
execute if predicate tid:random_03 run setblock ~ ~ ~ minecraft:potted_crimson_roots
execute if predicate tid:random_03 run setblock ~ ~ ~ minecraft:cobweb
execute if predicate tid:random_03 run setblock ~ ~ ~ minecraft:damaged_anvil
execute if predicate tid:random_25 if block ~-1 ~ ~ air run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/sin_office"}
execute if predicate tid:random_25 if block ~ ~ ~-1 air run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/sin_office"}
