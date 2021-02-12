#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/stairs", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~6 ~-119 ~6 minecraft:blue_wool

#Count the room in the total
scoreboard players remove sin_chambers_rooms value 1

#Randomize blocks in the room
scoreboard players set xmax value 7
scoreboard players set ymax value 10
scoreboard players set zmax value 7
function tid:dungeon/sin/chambers/rng/run_rng

#We're done here
kill @s

