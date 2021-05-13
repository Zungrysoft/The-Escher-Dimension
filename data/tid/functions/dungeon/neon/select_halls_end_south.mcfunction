#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/halls_end_south", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Reserve
fill ~ ~128 ~ ~3 ~132 ~3 blue_wool

#Mark this area on the map
fill ~ 255 ~ ~3 255 ~3 minecraft:green_terracotta replace minecraft:stone

#Count
scoreboard players remove neon_halls_ends value 1

#We're done here
kill @s
