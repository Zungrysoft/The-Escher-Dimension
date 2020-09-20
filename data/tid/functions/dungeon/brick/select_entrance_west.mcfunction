#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:brick/entrance_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~21 ~154 ~15 minecraft:blue_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~21 255 ~15 minecraft:bricks

#Spawn in the nexus
execute positioned ~6 ~-6 ~4 run function tid:dungeon/brick/select_entrance_nexus

#We're done here
kill @s

