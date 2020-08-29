#Update Coordinates
function tid:update_coords

#Pick a structure from this list
execute if score @s y matches 161.. run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/junction_cross", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s y matches 161.. if predicate tid:random_50 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/junction_tee_south", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s y matches 161.. if predicate tid:random_33 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/junction_tee_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s y matches 161.. if predicate tid:random_25 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/junction_tee_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s y matches 161.. if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/junction_turn_south", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s y matches 161.. if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/junction_turn_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s y matches 161.. if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/junction_straight_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Broken structures
execute if score @s y matches ..160 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/junction_cross_broken", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s y matches ..160 if predicate tid:random_50 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/junction_tee_south_broken", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s y matches ..160 if predicate tid:random_33 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/junction_tee_north_broken", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s y matches ..160 if predicate tid:random_25 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/junction_tee_west_broken", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s y matches ..160 if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/junction_turn_south_broken", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s y matches ..160 if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/junction_turn_west_broken", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s y matches ..160 if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/junction_straight_west_broken", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~4 ~-121 ~4 minecraft:blue_wool

#Count the room in the total
scoreboard players add @e[name="sin_chambers_roomcount",type=area_effect_cloud,limit=1] tries 1

#We're done here
kill @s

