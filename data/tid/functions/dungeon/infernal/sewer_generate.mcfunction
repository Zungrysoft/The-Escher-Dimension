#Each section is given set of scores that track what directions it goes in. This function picks what piece should be generated based on that information.

#Cross (Default)
setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/junction_cross", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Shaft Cross
execute if score @s down matches 1 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/junction_shaft_cross", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Straights
execute if score @s north matches 0 if score @s east matches 1 if score @s south matches 0 if score @s west matches 1 if score @s down matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/junction_straight_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s north matches 1 if score @s east matches 0 if score @s south matches 1 if score @s west matches 0 if score @s down matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/junction_straight_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Turns
execute if score @s north matches 1 if score @s east matches 1 if score @s south matches 0 if score @s west matches 0 if score @s down matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/junction_turn_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s north matches 0 if score @s east matches 0 if score @s south matches 1 if score @s west matches 1 if score @s down matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/junction_turn_south", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s north matches 0 if score @s east matches 1 if score @s south matches 1 if score @s west matches 0 if score @s down matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/junction_turn_east", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s north matches 1 if score @s east matches 0 if score @s south matches 0 if score @s west matches 1 if score @s down matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/junction_turn_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Tees
execute if score @s north matches 1 if score @s east matches 1 if score @s south matches 0 if score @s west matches 1 if score @s down matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/junction_tee_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s north matches 0 if score @s east matches 1 if score @s south matches 1 if score @s west matches 1 if score @s down matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/junction_tee_south", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s north matches 1 if score @s east matches 1 if score @s south matches 1 if score @s west matches 0 if score @s down matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/junction_tee_east", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s north matches 1 if score @s east matches 0 if score @s south matches 1 if score @s west matches 1 if score @s down matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/junction_tee_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Vertical Shaft
execute if score @s north matches 0 if score @s east matches 0 if score @s south matches 0 if score @s west matches 0 if score @s down matches 1 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/junction_shaft", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Straight Shafts
execute if score @s north matches 1 if score @s east matches 0 if score @s south matches 1 if score @s west matches 0 if score @s down matches 1 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/junction_shaft_straight_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s north matches 0 if score @s east matches 1 if score @s south matches 0 if score @s west matches 1 if score @s down matches 1 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/junction_shaft_straight_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Other Shafts
execute if score @s north matches 1 if score @s east matches 0 if score @s south matches 0 if score @s west matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/junction_shaft_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s north matches 0 if score @s east matches 0 if score @s south matches 1 if score @s west matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/junction_shaft_south", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s north matches 0 if score @s east matches 1 if score @s south matches 0 if score @s west matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/junction_shaft_east", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s north matches 0 if score @s east matches 0 if score @s south matches 0 if score @s west matches 1 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/junction_shaft_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate it
setblock ~ ~1 ~ redstone_block

#Check for nearby 

#Over and out
kill @s