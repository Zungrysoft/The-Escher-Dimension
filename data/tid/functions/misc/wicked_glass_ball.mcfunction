#Build the base
fill ~-2 ~-1 ~-1 ~2 ~1 ~1 purple_stained_glass replace air
fill ~-2 ~-1 ~-1 ~2 ~1 ~1 purple_stained_glass replace crimson_roots
fill ~-2 ~-1 ~-1 ~2 ~1 ~1 purple_stained_glass replace crimson_fungus

fill ~-1 ~-2 ~-1 ~1 ~2 ~1 purple_stained_glass replace air
fill ~-1 ~-2 ~-1 ~1 ~2 ~1 purple_stained_glass replace crimson_roots
fill ~-1 ~-2 ~-1 ~1 ~2 ~1 purple_stained_glass replace crimson_fungus

fill ~-1 ~-1 ~-2 ~1 ~1 ~2 purple_stained_glass replace air
fill ~-1 ~-1 ~-2 ~1 ~1 ~2 purple_stained_glass replace crimson_roots
fill ~-1 ~-1 ~-2 ~1 ~1 ~2 purple_stained_glass replace crimson_fungus

#Randomize Blocks
function tid:misc/wicked_glass_ball_x

#Build the chest
execute if predicate tid:random_25 run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/wicked"}
execute if predicate tid:random_33 run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/wicked"}
execute if predicate tid:random_50 run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/wicked"}
setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/wicked"}

#Remove this marker so it isn't picked again
kill @s
