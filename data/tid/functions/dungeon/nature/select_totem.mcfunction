#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_1", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_80 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_2", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_3", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_4", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_5", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_6", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_7", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_8", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_9", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_09 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_10", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_08 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_11", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_07 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_12", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_06 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_13", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_14", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_s1", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_s2", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_s3", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_s4", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Cake structure
execute if score nature_cake value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/totem_s5", posX: -3, posY: -1, posZ: -3, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
scoreboard players set nature_cake value 1

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block
