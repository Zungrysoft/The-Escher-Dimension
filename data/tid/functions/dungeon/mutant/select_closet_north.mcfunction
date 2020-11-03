#Pick a structure from this list
setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/closet_north", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~1 ~1 minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~4 ~134 ~3 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~4 255 ~3 minecraft:cyan_concrete replace minecraft:black_concrete
fill ~2 255 ~2 ~2 255 ~3 minecraft:light_blue_concrete replace minecraft:cyan_concrete
fill ~1 255 ~1 ~3 255 ~1 minecraft:light_blue_concrete replace minecraft:cyan_concrete

#Randomize
scoreboard players set xmax value 5
scoreboard players set ymax value 7
scoreboard players set zmax value 4
function tid:dungeon/mutant/rng/run_rng

#Count the room in the total
scoreboard players remove mutant_rooms value 1

#We're done here
kill @s

