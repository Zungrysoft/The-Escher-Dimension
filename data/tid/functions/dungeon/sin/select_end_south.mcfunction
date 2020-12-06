#Determine district
function tid:dungeon/sin/get_nearest_district

#Pick a structure from this list
setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:sin/end_south", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~1 ~1 minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~4 ~-125 ~1 air

#Recolor the concrete blocks in the room
execute if score district_color value matches 0 run fill ~ ~ ~ ~4 ~3 ~1 white_concrete replace light_blue_concrete
execute if score district_color value matches 1 run fill ~ ~ ~ ~4 ~3 ~1 orange_concrete replace light_blue_concrete
execute if score district_color value matches 2 run fill ~ ~ ~ ~4 ~3 ~1 magenta_concrete replace light_blue_concrete
execute if score district_color value matches 4 run fill ~ ~ ~ ~4 ~3 ~1 yellow_concrete replace light_blue_concrete
execute if score district_color value matches 5 run fill ~ ~ ~ ~4 ~3 ~1 lime_concrete replace light_blue_concrete
execute if score district_color value matches 6 run fill ~ ~ ~ ~4 ~3 ~1 pink_concrete replace light_blue_concrete
execute if score district_color value matches 7 run fill ~ ~ ~ ~4 ~3 ~1 gray_concrete replace light_blue_concrete
execute if score district_color value matches 8 run fill ~ ~ ~ ~4 ~3 ~1 light_gray_concrete replace light_blue_concrete
execute if score district_color value matches 9 run fill ~ ~ ~ ~4 ~3 ~1 cyan_concrete replace light_blue_concrete
execute if score district_color value matches 10 run fill ~ ~ ~ ~4 ~3 ~1 purple_concrete replace light_blue_concrete
execute if score district_color value matches 11 run fill ~ ~ ~ ~4 ~3 ~1 blue_concrete replace light_blue_concrete
execute if score district_color value matches 12 run fill ~ ~ ~ ~4 ~3 ~1 brown_concrete replace light_blue_concrete
execute if score district_color value matches 13 run fill ~ ~ ~ ~4 ~3 ~1 green_concrete replace light_blue_concrete
execute if score district_color value matches 14 run fill ~ ~ ~ ~4 ~3 ~1 red_concrete replace light_blue_concrete
execute if score district_color value matches 15 run fill ~ ~ ~ ~4 ~3 ~1 black_concrete replace light_blue_concrete

#Remove any walls between this room and the one it generated from
function tid:dungeon/sin/remove_walls

#Count the room in the total
scoreboard players remove sin_rooms value 1

#We're done here
kill @s
