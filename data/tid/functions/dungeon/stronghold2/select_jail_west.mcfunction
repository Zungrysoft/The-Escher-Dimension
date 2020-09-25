#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/jail_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~10 ~133 ~8 minecraft:blue_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~10 255 ~8 minecraft:stone replace minecraft:black_concrete
fill ~ 255 ~ ~10 255 ~8 minecraft:stone replace minecraft:bricks
fill ~ 255 ~6 ~10 255 ~6 minecraft:light_gray_concrete replace minecraft:stone

#Count the room in the total
scoreboard players remove stronghold2_rooms value 1

#We're done here
kill @s

