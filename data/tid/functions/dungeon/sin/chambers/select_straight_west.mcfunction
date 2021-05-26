#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/straight_west_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/straight_west_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_06 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/straight_west_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~14 ~-121 ~8 minecraft:blue_wool

#Randomize blocks in the room
scoreboard players set xmax value 15
scoreboard players set ymax value 8
scoreboard players set zmax value 9
function tid:dungeon/sin/chambers/rng/run_rng

#Count the room in the total
scoreboard players remove sin_chambers_rooms value 1

#We're done here
kill @s

