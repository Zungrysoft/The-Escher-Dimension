#Pick a structure from this list based on the previously set totemtype global
execute if score totemtype value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:ice/totem_chest", posX: -2, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score totemtype value matches 1 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:ice/totem_1", posX: -2, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score totemtype value matches 2 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:ice/totem_2", posX: -2, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score totemtype value matches 3 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:ice/totem_3", posX: -2, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score totemtype value matches 4 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:ice/totem_4", posX: -2, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score totemtype value matches 5 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:ice/totem_5", posX: -2, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score totemtype value matches 6 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:ice/totem_6", posX: -2, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score totemtype value matches 7 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:ice/totem_7", posX: -2, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score totemtype value matches 8 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:ice/totem_8", posX: -2, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Kill this AEC so it doesn't get used again
kill @s
