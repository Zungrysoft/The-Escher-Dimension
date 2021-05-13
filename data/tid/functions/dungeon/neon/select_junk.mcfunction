#Generate the random number
scoreboard players set temp value 0
execute if predicate tid:random_40 run scoreboard players add temp value 1
execute if predicate tid:random_25 run scoreboard players add temp value 2
execute if predicate tid:random_09 run scoreboard players add temp value 4

#Add them together and wrap it to between 0 and 7
scoreboard players operation temp value += neon_junk_global value
scoreboard players set calc value 8
scoreboard players operation temp value %= calc value

#Pick a structure from this list
execute if score temp value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/junk_1", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 1 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/junk_2", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 2 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/junk_3", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 3 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/junk_4", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 4 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/junk_5", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 5 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/junk_6", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 6 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/junk_7", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 7 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/junk_8", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Special structures
execute if predicate tid:random_07 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/junk_s1", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/junk_s2", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block
