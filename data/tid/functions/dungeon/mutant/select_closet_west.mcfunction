#Pick a structure from this list
setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/closet_west", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~1 ~1 minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~3 ~134 ~4 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~3 255 ~4 minecraft:cyan_concrete replace minecraft:black_concrete
fill ~2 255 ~2 ~3 255 ~2 minecraft:light_blue_concrete replace minecraft:cyan_concrete
fill ~1 255 ~1 ~1 255 ~3 minecraft:light_blue_concrete replace minecraft:cyan_concrete

#Randomize
scoreboard players set xmax value 4
scoreboard players set ymax value 7
scoreboard players set zmax value 5
function tid:dungeon/mutant/rng/run_rng

#Count the room in the total
scoreboard players remove mutant_rooms value 1

#We're done here
kill @s

