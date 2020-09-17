#Up to seven underwater treasures may generate. Each one that generates increments the counter by one so the next treasure will use the next structure file. This is so the first treasure that generates will always contain a trident.

#Increment the counter
scoreboard players add underwater_treasure_count value 1

#Select the structure
execute if score underwater_treasure_count value matches 1 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/treasure_1", posX: -2, posY: -2, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score underwater_treasure_count value matches 2 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/treasure_2", posX: -2, posY: -2, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score underwater_treasure_count value matches 3 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/treasure_3", posX: -2, posY: -2, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score underwater_treasure_count value matches 4 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/treasure_4", posX: -2, posY: -2, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score underwater_treasure_count value matches 5 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/treasure_5", posX: -2, posY: -2, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score underwater_treasure_count value matches 6 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/treasure_6", posX: -2, posY: -2, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score underwater_treasure_count value matches 7 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/treasure_7", posX: -2, posY: -2, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#If a structure block was placed, activate it
execute if block ~ ~ ~ structure_block run setblock ~ ~1 ~ redstone_block