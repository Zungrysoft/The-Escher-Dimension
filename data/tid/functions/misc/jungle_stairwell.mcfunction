#Delete the command block
fill ~ ~ ~ ~ ~1 ~ air

#Generate the first room
execute positioned ~-3 ~5 ~-3 run function tid:dungeon/jungle/select_tower_quad

#Empty out the room to make room for the staircase
fill ~-2 ~6 ~-2 ~2 ~8 ~2 air

#Place the stairwell
setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/stairwell", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
setblock ~ ~1 ~ redstone_block