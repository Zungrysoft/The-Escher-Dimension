#Generate the main room base
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sand1/room", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Mark this area on the map
fill ~ 255 ~ ~12 255 ~12 minecraft:sandstone replace minecraft:black_concrete

#Activate the structure block
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~12 ~136 ~12 minecraft:blue_wool replace minecraft:orange_wool

#Decide which directions to generate in
function tid:dungeon/sand1/select_inside

#Count the room in the total
scoreboard players remove sand1_rooms value 1

#We're done here
kill @s

