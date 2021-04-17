#Generate the main room base
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sand2/room", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Mark this area on the map
#fill ~ 255 ~ ~12 255 ~12 minecraft:red_sandstone replace minecraft:black_concrete

#Activate the structure block
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~12 ~138 ~12 minecraft:blue_wool replace minecraft:orange_wool

#Decide which directions to generate in
function tid:dungeon/sand2/select_inside

#Maybe place an alloy elemental
execute if predicate tid:random_10 positioned ~6 ~4 ~6 if block ~ ~ ~ air if block ~ ~1 ~ air unless block ~ ~-1 ~ air run function tid:custom_mobs/alloy_elemental

#Count the room in the total
scoreboard players remove sand2_rooms value 1

#We're done here
kill @s

