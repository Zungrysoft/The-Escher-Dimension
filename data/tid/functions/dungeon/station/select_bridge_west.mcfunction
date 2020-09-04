#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/bridge_west_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/bridge_west_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_07 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/bridge_west_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_07 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/bridge_west_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_06 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/bridge_west_5", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/bridge_west_6", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_04 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/bridge_west_7", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_03 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/bridge_west_8", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_02 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/bridge_west_9", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~6 ~136 ~4 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~6 255 ~4 minecraft:red_nether_bricks replace minecraft:purple_concrete
fill ~ 255 ~ ~6 255 ~4 minecraft:red_nether_bricks replace minecraft:black_concrete
fill ~ 255 ~2 ~6 255 ~2 minecraft:red_concrete replace minecraft:red_nether_bricks

#Count the room in the total
scoreboard players remove station_rooms value 1

#We're done here
kill @s

