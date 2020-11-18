#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:soulsand/entrance_east", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~30 ~144 ~12 blue_wool

#Mark this area on the map
fill ~ 255 ~ ~30 255 ~12 soul_soil replace black_concrete
fill ~ 255 ~6 ~27 255 ~6 nether_bricks replace soul_soil
fill ~27 255 ~ ~27 255 ~12 nether_bricks replace soul_soil

#Remove the structure block
setblock ~ ~ ~ stone
setblock ~ ~1 ~ air

#We're done here
kill @s

