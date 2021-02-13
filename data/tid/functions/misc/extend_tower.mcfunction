#Delete Command Block
fill ~ ~ ~ ~ ~2 ~ polished_blackstone_bricks

#Decide whether to put another tower above it
execute if predicate tid:random_40 if blocks ~ ~-123 ~ ~4 ~-116 ~4 1001 1 1001 all run setblock ~ ~2 ~ structure_block{name: "tid:sin/deco_medium_3_extension", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if block ~ ~2 ~ structure_block run fill ~ ~-123 ~ ~4 ~-116 ~4 blue_wool
execute if block ~ ~2 ~ structure_block run setblock ~2 ~1 ~2 gilded_blackstone
execute if block ~ ~2 ~ structure_block run setblock ~ ~3 ~ redstone_block
