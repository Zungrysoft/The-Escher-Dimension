#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:ice/entrance_east", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~33 ~141 ~13 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~33 255 ~13 minecraft:light_blue_concrete replace minecraft:black_concrete

#Build first piece off of this
execute positioned ~33 ~6 ~6 positioned ~1 ~-2 ~-5 run function tid:dungeon/ice/select_room

#Surround in ice
fill ~0 ~-1 ~-1 ~34 ~14 ~14 packed_ice replace stone

#We're done here
kill @s
