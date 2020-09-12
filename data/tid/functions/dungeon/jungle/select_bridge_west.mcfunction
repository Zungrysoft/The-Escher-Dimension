#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/bridge_west_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-126 ~ ~12 ~-120 ~4 air

#Count the room in the total
scoreboard players remove jungle_rooms value 1

#Pillars
clone ~ ~-129 ~ ~1 ~-173 ~4 ~ ~-45 ~ masked
fill ~ ~-1 ~ ~1 ~-45 ~4 mossy_cobblestone replace orange_wool
clone ~ ~-174 ~ ~1 ~-218 ~4 ~ ~-90 ~ masked
fill ~ ~-46 ~ ~1 ~-90 ~4 mossy_cobblestone replace orange_wool

clone ~11 ~-129 ~ ~12 ~-173 ~4 ~11 ~-45 ~ masked
fill ~11 ~-1 ~ ~12 ~-45 ~4 mossy_cobblestone replace orange_wool
clone ~11 ~-174 ~ ~12 ~-218 ~4 ~11 ~-90 ~ masked
fill ~11 ~-46 ~ ~12 ~-90 ~4 mossy_cobblestone replace orange_wool

#We're done here
#kill @s

