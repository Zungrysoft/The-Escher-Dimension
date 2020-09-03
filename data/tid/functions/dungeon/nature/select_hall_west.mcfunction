#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/hall_west_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~1 ~128 ~1 ~11 ~133 ~7 minecraft:blue_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~12 255 ~8 minecraft:oak_planks replace minecraft:black_concrete
fill ~ 255 ~4 ~12 255 ~4 minecraft:stone replace minecraft:oak_planks

#Count the room in the total
scoreboard players remove nature_rooms value 1

#We're done here
kill @s

