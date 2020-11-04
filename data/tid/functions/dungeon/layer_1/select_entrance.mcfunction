#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:intro/entrance", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Add ZungryWare's head
replaceitem block 11 58 -37 container.22 minecraft:player_head{SkullOwner:ZungryWare}

#Mark this area as generated
fill ~ ~128 ~ ~32 ~148 ~37 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~32 255 ~37 minecraft:stone

#We're done here
kill @s

