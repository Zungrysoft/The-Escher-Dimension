#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/bridge_north_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-126 ~ ~4 ~-120 ~12 air

#Count the room in the total
scoreboard players remove jungle_rooms value 1

#Pillars
clone ~ ~-129 ~ ~4 ~-173 ~1 ~ ~-45 ~ masked
fill ~ ~-1 ~ ~4 ~-45 ~1 mossy_cobblestone replace orange_wool
clone ~ ~-174 ~ ~4 ~-218 ~1 ~ ~-90 ~ masked
fill ~ ~-46 ~ ~4 ~-90 ~1 mossy_cobblestone replace orange_wool

clone ~ ~-129 ~11 ~4 ~-173 ~12 ~ ~-45 ~11 masked
fill ~ ~-1 ~11 ~4 ~-45 ~12 mossy_cobblestone replace orange_wool
clone ~ ~-174 ~11 ~4 ~-218 ~12 ~ ~-90 ~11 masked
fill ~ ~-46 ~11 ~4 ~-90 ~12 mossy_cobblestone replace orange_wool

#We're done here
#kill @s

