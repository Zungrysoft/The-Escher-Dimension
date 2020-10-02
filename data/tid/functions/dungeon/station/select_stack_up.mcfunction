#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stack_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_40 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stack_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stack_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stack_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stack_5", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stack_6", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stack_7", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_08 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stack_8", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_08 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stack_9", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_07 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stack_10", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_06 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stack_11", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_06 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stack_12", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_04 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stack_13", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_04 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stack_14", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_04 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stack_15", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_02 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stack_16", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_02 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stack_17", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_02 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stack_18", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#No need to mark the map, since generating up or down will never mark any new space

#Check for the portal to Reliquary Outpost
function tid:dungeon/station/event1_check

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~14 ~136 ~10 minecraft:blue_wool

#Count the room in the total
scoreboard players remove station_rooms value 1

#We're done here
kill @s