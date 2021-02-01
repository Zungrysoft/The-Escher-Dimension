#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:finale/boss/spine_1", posX: -5, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:finale/boss/spine_2", posX: -5, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:finale/boss/spine_3", posX: -5, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:finale/boss/spine_4", posX: -5, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:finale/boss/spine_5", posX: -5, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_09 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:finale/boss/spine_6", posX: -5, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:finale/boss/spine_7", posX: -5, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:finale/boss/spine_8", posX: -5, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:finale/boss/spine_9", posX: -5, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_04 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:finale/boss/spine_10", posX: -5, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_06 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:finale/boss/spine_11", posX: -5, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_02 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:finale/boss/spine_12", posX: -5, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:air
setblock ~ ~1 ~ minecraft:redstone_block

#We're done here
execute if entity @s[name="finale_boss_up"] run kill @s
