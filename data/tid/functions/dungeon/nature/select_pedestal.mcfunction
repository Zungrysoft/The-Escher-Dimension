#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/pedestal_1", posX: -1, posY: -2, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Build the chest
execute if predicate tid:random_25 run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/nature_biome"}
execute if predicate tid:random_33 run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/nature_biome"}
execute if predicate tid:random_50 run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/nature_biome"}
setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/nature_biome"}
