#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:ice/towertop_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~13 ~142 ~13 minecraft:blue_wool

#Surround in ice
fill ~-1 ~-1 ~-1 ~14 ~15 ~14 packed_ice replace stone

#Carve caves and randomize
scoreboard players set xmax value 14
scoreboard players set ymax value 15
scoreboard players set zmax value 14
function tid:dungeon/ice/carve/run
function tid:dungeon/ice/rng/run_rng

#Count the room in the total
scoreboard players remove ice_rooms value 1

#We're done here
kill @s
