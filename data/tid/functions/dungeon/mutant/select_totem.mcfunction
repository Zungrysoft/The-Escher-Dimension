#Pick a structure from this list
setblock ~3 ~ ~3 minecraft:structure_block{name: "tid:mutant/totem_1", posX: -3, posY: 0, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~3 ~ ~3 minecraft:structure_block{name: "tid:mutant/totem_2", posX: -3, posY: 0, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~3 ~ ~3 minecraft:structure_block{name: "tid:mutant/totem_3", posX: -3, posY: 0, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 run setblock ~3 ~ ~3 minecraft:structure_block{name: "tid:mutant/totem_4", posX: -3, posY: 0, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~3 ~ ~3 minecraft:structure_block{name: "tid:mutant/totem_5", posX: -3, posY: 0, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~3 ~ ~3 minecraft:structure_block{name: "tid:mutant/totem_6", posX: -3, posY: 0, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~3 ~ ~3 minecraft:structure_block{name: "tid:mutant/totem_7", posX: -3, posY: 0, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~3 ~ ~3 minecraft:structure_block{name: "tid:mutant/totem_8", posX: -3, posY: 0, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_03 run setblock ~3 ~ ~3 minecraft:structure_block{name: "tid:mutant/totem_9", posX: -3, posY: 0, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~3 ~1 ~3 minecraft:redstone_block
