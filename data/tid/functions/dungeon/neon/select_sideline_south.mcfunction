#Pick a structure from this list
execute if score temp value matches 0..1 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/sideline_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 2 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/sideline_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 3 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/sideline_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 4 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/sideline_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 5 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/sideline_5", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 6 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/sideline_6", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 7 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/sideline_7", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 8 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/sideline_8", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 9 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/sideline_9", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/sideline_10", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 11 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/sideline_11", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 12 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/sideline_12", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 13 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/sideline_13", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 14 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/sideline_14", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/sideline_15", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area on the map
fill ~ 255 ~ ~6 255 ~3 minecraft:green_terracotta replace minecraft:purpur_block

#We're done here
kill @s