#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/connector_west_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Open wall
execute at @s run function tid:dungeon/moon/open_room

#Mark this area on the map
fill ~ 255 ~ ~4 255 ~8 minecraft:granite replace minecraft:end_stone
fill ~ 255 ~ ~4 255 ~8 minecraft:granite replace minecraft:black_concrete
fill ~ 255 ~4 ~4 255 ~4 minecraft:red_sandstone replace minecraft:granite
fill ~ 255 ~1 ~1 255 ~7 minecraft:red_sandstone replace minecraft:granite

#Mark this area as generated
fill ~ ~128 ~ ~4 ~136 ~8 minecraft:blue_wool

#Count the room in the total
scoreboard players remove moon_rooms value 1

#We're done here
kill @s
