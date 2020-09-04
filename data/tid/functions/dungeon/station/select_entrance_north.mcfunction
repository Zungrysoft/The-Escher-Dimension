#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/entrance_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~10 ~136 ~30 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~10 255 ~30 minecraft:red_nether_bricks replace minecraft:purple_concrete
fill ~ 255 ~ ~10 255 ~30 minecraft:red_nether_bricks replace minecraft:black_concrete
fill ~5 255 ~ ~5 255 ~30 minecraft:red_concrete replace minecraft:red_nether_bricks
fill ~ 255 ~5 ~10 255 ~5 minecraft:red_concrete replace minecraft:red_nether_bricks
fill ~ 255 ~12 ~10 255 ~12 minecraft:red_concrete replace minecraft:red_nether_bricks
fill ~ 255 ~19 ~10 255 ~19 minecraft:red_concrete replace minecraft:red_nether_bricks

#Count the room in the total
scoreboard players remove station_rooms value 1

#We're done here
kill @s



