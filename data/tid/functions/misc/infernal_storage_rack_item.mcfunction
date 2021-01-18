#Decide on the item to place
execute if predicate tid:random_05 run setblock ~ ~ ~ potted_brown_mushroom
execute if predicate tid:random_01 run setblock ~ ~ ~ potted_red_mushroom
execute if predicate tid:random_05 run setblock ~ ~ ~ potted_crimson_fungus
execute if predicate tid:random_05 run setblock ~ ~ ~ potted_warped_fungus
execute if predicate tid:random_05 run setblock ~ ~ ~ potted_fern
execute if predicate tid:random_01 run setblock ~ ~ ~ potted_dandelion
execute if predicate tid:random_05 run setblock ~ ~ ~ potted_dead_bush
execute if predicate tid:random_05 run setblock ~ ~ ~ potted_crimson_roots
execute if predicate tid:random_01 run setblock ~ ~ ~ potted_wither_rose
execute if predicate tid:random_10 run setblock ~ ~ ~ flower_pot

execute if predicate tid:random_05 run setblock ~ ~ ~ piston[facing=east]
execute if predicate tid:random_05 run setblock ~ ~ ~ piston[facing=west]
execute if predicate tid:random_01 run setblock ~ ~ ~ ancient_debris
execute if predicate tid:random_03 run setblock ~ ~ ~ hay_block
execute if predicate tid:random_04 run setblock ~ ~ ~ coal_ore
execute if predicate tid:random_04 run setblock ~ ~ ~ iron_ore
execute if predicate tid:random_03 run setblock ~ ~ ~ redstone_ore

execute if predicate tid:random_05 run setblock ~ ~ ~ barrel[facing=west]{LootTable: "tid:chests/supplies"}
execute if predicate tid:random_05 run setblock ~ ~ ~ barrel[facing=east]{LootTable: "tid:chests/supplies"}
execute if predicate tid:random_10 run setblock ~ ~ ~ barrel[facing=west]{LootTable: "tid:chests/infernal_barrel"}
execute if predicate tid:random_10 run setblock ~ ~ ~ barrel[facing=east]{LootTable: "tid:chests/infernal_barrel"}
