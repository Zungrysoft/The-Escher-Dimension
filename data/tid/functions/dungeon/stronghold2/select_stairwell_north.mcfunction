#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/stairwell_north_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/stairwell_north_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_30 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/stairwell_north_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_30 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/stairwell_north_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/stairwell_north_5", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/stairwell_north_6", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~4 ~139 ~10 minecraft:blue_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~4 255 ~10 minecraft:stone replace minecraft:black_concrete
fill ~ 255 ~ ~4 255 ~10 minecraft:stone replace minecraft:bricks
fill ~2 255 ~ ~2 255 ~10 minecraft:light_gray_concrete replace minecraft:stone
fill ~1 255 ~4 ~3 255 ~6 minecraft:light_gray_concrete replace minecraft:stone

#Randomize blocks
scoreboard players set xmax value 5
scoreboard players set ymax value 12
scoreboard players set zmax value 11
function tid:dungeon/stronghold2/rng/run_rng

#Count the room in the total
scoreboard players remove stronghold2_rooms value 1

#We're done here
kill @s

