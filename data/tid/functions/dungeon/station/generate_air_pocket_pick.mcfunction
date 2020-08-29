#Pick an air pocket to try and generate
execute if blocks ~-15 ~128 ~-15 ~15 ~148 ~15 33 1 33 all if blocks ~-15 ~108 ~-15 ~15 ~127 ~15 33 1 33 all run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/air_pocket_1", posX: -15, posY: -20, posZ: -15, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#If a structure block was successfully picked, activate it with a redstone block
execute if block ~ ~ ~ structure_block run setblock ~ ~1 ~ redstone_block

#Mark the cave segment on the map
fill ~-15 255 ~-15 ~15 255 ~15 minecraft:purple_concrete replace minecraft:black_concrete