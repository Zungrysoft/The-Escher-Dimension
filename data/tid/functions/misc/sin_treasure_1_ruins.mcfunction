#Pick a ruins
setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins1", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins2", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins3", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins4", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins5", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins6", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins7", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins8", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins9", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins10", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_09 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins11", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_08 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins12", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_07 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins13", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_07 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins14", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_06 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins15", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_06 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins16", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_06 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins17", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins18", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins19", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins20", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~ ~ ~-4 minecraft:structure_block{name: "tid:sin/chambers/ruins/ruins21", posX: -12, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Pick a random height
execute if predicate tid:random_50 run data modify block ~ ~ ~-4 posY set value 0b
execute if predicate tid:random_33 run data modify block ~ ~ ~-4 posY set value 1b
execute if predicate tid:random_25 run data modify block ~ ~ ~-4 posY set value 3b
execute if predicate tid:random_20 run data modify block ~ ~ ~-4 posY set value 4b
execute if predicate tid:random_15 run data modify block ~ ~ ~-4 posY set value 5b
execute if predicate tid:random_15 run data modify block ~ ~ ~-4 posY set value 6b
execute if predicate tid:random_02 run data modify block ~ ~ ~-4 posY set value 2b

#Decide whether to flip it
execute if predicate tid:random_50 run setblock ~ ~1 ~ blackstone
execute if block ~ ~1 ~ blackstone run data modify block ~ ~ ~-4 mirror set value "LEFT_RIGHT"
execute if block ~ ~1 ~ blackstone run data modify block ~ ~ ~-4 posZ set value 8
setblock ~ ~1 ~ air

#Activate it
setblock ~ ~1 ~-4 redstone_block

#Remove the Structure Block and Redstone Block
fill ~ ~ ~-4 ~ ~1 ~-4 air



