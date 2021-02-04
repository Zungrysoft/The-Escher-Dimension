#Determine district
execute positioned ~2 ~ ~2 run function tid:dungeon/sin/get_nearest_district

#Pick a structure from this list
#Default
execute if entity @s[name="sin_north"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_north_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if entity @s[name="sin_south"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_south_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if entity @s[name="sin_west"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_west_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if entity @s[name="sin_east"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_east_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Gray
execute if score district_color value matches 7 if entity @s[name="sin_north"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_north_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 7 if entity @s[name="sin_south"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_south_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 7 if entity @s[name="sin_west"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_west_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 7 if entity @s[name="sin_east"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_east_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Orange
execute if score district_color value matches 1 if entity @s[name="sin_north"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_north_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 1 if entity @s[name="sin_south"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_south_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 1 if entity @s[name="sin_west"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_west_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 1 if entity @s[name="sin_east"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_east_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Purple
execute if score district_color value matches 10 if entity @s[name="sin_north"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_north_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 10 if entity @s[name="sin_south"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_south_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 10 if entity @s[name="sin_west"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_west_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 10 if entity @s[name="sin_east"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_east_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Cyan
execute if score district_color value matches 9 if entity @s[name="sin_north"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_north_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 9 if entity @s[name="sin_south"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_south_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 9 if entity @s[name="sin_west"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_west_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 9 if entity @s[name="sin_east"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_east_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Brown
execute if score district_color value matches 12 if entity @s[name="sin_north"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_north_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 12 if entity @s[name="sin_south"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_south_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 12 if entity @s[name="sin_west"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_west_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 12 if entity @s[name="sin_east"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_east_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Black
execute if score district_color value matches 15 if entity @s[name="sin_north"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_north_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 15 if entity @s[name="sin_south"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_south_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 15 if entity @s[name="sin_west"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_west_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 15 if entity @s[name="sin_east"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_east_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Yellow
execute if score district_color value matches 4 if entity @s[name="sin_north"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_north_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 4 if entity @s[name="sin_south"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_south_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 4 if entity @s[name="sin_west"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_west_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 4 if entity @s[name="sin_east"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_east_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~4 ~-124 ~4 air

#Recolor the concrete blocks in the room
execute if score district_color value matches 0 run fill ~ ~2 ~ ~4 ~4 ~4 white_concrete replace light_blue_concrete
execute if score district_color value matches 1 run fill ~ ~2 ~ ~4 ~4 ~4 orange_concrete replace light_blue_concrete
execute if score district_color value matches 2 run fill ~ ~2 ~ ~4 ~4 ~4 magenta_concrete replace light_blue_concrete
execute if score district_color value matches 4 run fill ~ ~2 ~ ~4 ~4 ~4 yellow_concrete replace light_blue_concrete
execute if score district_color value matches 5 run fill ~ ~2 ~ ~4 ~4 ~4 lime_concrete replace light_blue_concrete
execute if score district_color value matches 6 run fill ~ ~2 ~ ~4 ~4 ~4 pink_concrete replace light_blue_concrete
execute if score district_color value matches 7 run fill ~ ~2 ~ ~4 ~4 ~4 gray_concrete replace light_blue_concrete
execute if score district_color value matches 8 run fill ~ ~2 ~ ~4 ~4 ~4 light_gray_concrete replace light_blue_concrete
execute if score district_color value matches 9 run fill ~ ~2 ~ ~4 ~4 ~4 cyan_concrete replace light_blue_concrete
execute if score district_color value matches 10 run fill ~ ~2 ~ ~4 ~4 ~4 purple_concrete replace light_blue_concrete
execute if score district_color value matches 11 run fill ~ ~2 ~ ~4 ~4 ~4 blue_concrete replace light_blue_concrete
execute if score district_color value matches 12 run fill ~ ~2 ~ ~4 ~4 ~4 brown_concrete replace light_blue_concrete
execute if score district_color value matches 13 run fill ~ ~2 ~ ~4 ~4 ~4 green_concrete replace light_blue_concrete
execute if score district_color value matches 14 run fill ~ ~2 ~ ~4 ~4 ~4 red_concrete replace light_blue_concrete
execute if score district_color value matches 15 run fill ~ ~2 ~ ~4 ~4 ~4 black_concrete replace light_blue_concrete

#Remove any walls between this room and the one it generated from
function tid:dungeon/sin/remove_walls

#Count the room in the total
scoreboard players remove sin_rooms value 1

#We're done here
kill @s

