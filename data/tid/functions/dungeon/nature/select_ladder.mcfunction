#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/ladder", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Mark this area on the map
fill ~ 255 ~ ~6 255 ~6 minecraft:oak_planks replace minecraft:black_concrete
fill ~3 255 ~ ~3 255 ~6 minecraft:stone replace minecraft:oak_planks
fill ~ 255 ~3 ~6 255 ~3 minecraft:stone replace minecraft:oak_planks

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~6 ~158 ~6 minecraft:blue_wool replace minecraft:orange_wool

#Count the room in the total
scoreboard players remove nature_rooms value 1

#We're done here
kill @s

