#Pick a structure from this list
setblock ~3 ~ ~ minecraft:structure_block{name: "tid:junction/hallway_1", posX: -3, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~3 ~ ~ minecraft:structure_block{name: "tid:junction/hallway_2", posX: -3, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~3 ~ ~ minecraft:structure_block{name: "tid:junction/hallway_3", posX: -3, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 run setblock ~3 ~ ~ minecraft:structure_block{name: "tid:junction/hallway_4", posX: -3, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~3 ~ ~ minecraft:structure_block{name: "tid:junction/hallway_5", posX: -3, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~3 ~ ~ minecraft:structure_block{name: "tid:junction/hallway_6", posX: -3, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~3 ~ ~ minecraft:structure_block{name: "tid:junction/hallway_7", posX: -3, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~3 ~ ~ minecraft:structure_block{name: "tid:junction/hallway_8", posX: -3, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~3 ~ ~ minecraft:structure_block{name: "tid:junction/hallway_9", posX: -3, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_07 run setblock ~3 ~ ~ minecraft:structure_block{name: "tid:junction/hallway_10", posX: -3, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_06 run setblock ~3 ~ ~ minecraft:structure_block{name: "tid:junction/hallway_11", posX: -3, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~3 ~ ~ minecraft:structure_block{name: "tid:junction/hallway_12", posX: -3, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~3 ~ ~ minecraft:structure_block{name: "tid:junction/hallway_13", posX: -3, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~3 ~1 ~ minecraft:redstone_block

#Remove the structure block
fill ~3 ~ ~ ~3 ~1 ~ air

#We're done here
kill @s

