#Pick a structure from this list
execute if entity @s[name="sin_north"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if entity @s[name="sin_south"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_south", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if entity @s[name="sin_west"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if entity @s[name="sin_east"] run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/tee_east", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~4 ~-124 ~4 air

#Recolor the concrete blocks in the room
execute positioned ~2 ~ ~2 run function tid:dungeon/sin/get_nearest_district
execute if score district_color value matches 0 run fill ~ ~4 ~ ~4 ~4 ~4 white_concrete replace light_blue_concrete
execute if score district_color value matches 1 run fill ~ ~4 ~ ~4 ~4 ~4 orange_concrete replace light_blue_concrete
execute if score district_color value matches 2 run fill ~ ~4 ~ ~4 ~4 ~4 magenta_concrete replace light_blue_concrete
execute if score district_color value matches 4 run fill ~ ~4 ~ ~4 ~4 ~4 yellow_concrete replace light_blue_concrete
execute if score district_color value matches 5 run fill ~ ~4 ~ ~4 ~4 ~4 lime_concrete replace light_blue_concrete
execute if score district_color value matches 6 run fill ~ ~4 ~ ~4 ~4 ~4 pink_concrete replace light_blue_concrete
execute if score district_color value matches 7 run fill ~ ~4 ~ ~4 ~4 ~4 gray_concrete replace light_blue_concrete
execute if score district_color value matches 8 run fill ~ ~4 ~ ~4 ~4 ~4 light_gray_concrete replace light_blue_concrete
execute if score district_color value matches 9 run fill ~ ~4 ~ ~4 ~4 ~4 cyan_concrete replace light_blue_concrete
execute if score district_color value matches 10 run fill ~ ~4 ~ ~4 ~4 ~4 purple_concrete replace light_blue_concrete
execute if score district_color value matches 11 run fill ~ ~4 ~ ~4 ~4 ~4 blue_concrete replace light_blue_concrete
execute if score district_color value matches 12 run fill ~ ~4 ~ ~4 ~4 ~4 brown_concrete replace light_blue_concrete
execute if score district_color value matches 13 run fill ~ ~4 ~ ~4 ~4 ~4 green_concrete replace light_blue_concrete
execute if score district_color value matches 14 run fill ~ ~4 ~ ~4 ~4 ~4 red_concrete replace light_blue_concrete
execute if score district_color value matches 15 run fill ~ ~4 ~ ~4 ~4 ~4 black_concrete replace light_blue_concrete

#Count the room in the total
scoreboard players remove sin_rooms value 1

#We're done here
kill @s

