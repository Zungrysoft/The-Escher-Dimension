#Determine district
execute positioned ~ ~ ~ run function tid:dungeon/sin/get_nearest_district

#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~10 ~-120 ~10 air

#Add support pillar
execute positioned ~ ~-1 ~ run clone ~ 41 ~ ~10 ~-128 ~10 ~ 169 ~ masked
execute positioned ~ ~-1 ~ run fill ~ 168 ~ ~10 ~ ~10 polished_blackstone_bricks replace orange_wool

#Recolor the concrete blocks in the room
execute if score district_color value matches 0 run fill ~ ~ ~ ~10 ~8 ~10 white_concrete replace light_blue_concrete
execute if score district_color value matches 1 run fill ~ ~ ~ ~10 ~8 ~10 orange_concrete replace light_blue_concrete
execute if score district_color value matches 2 run fill ~ ~ ~ ~10 ~8 ~10 magenta_concrete replace light_blue_concrete
execute if score district_color value matches 4 run fill ~ ~ ~ ~10 ~8 ~10 yellow_concrete replace light_blue_concrete
execute if score district_color value matches 5 run fill ~ ~ ~ ~10 ~8 ~10 lime_concrete replace light_blue_concrete
execute if score district_color value matches 6 run fill ~ ~ ~ ~10 ~8 ~10 pink_concrete replace light_blue_concrete
execute if score district_color value matches 7 run fill ~ ~ ~ ~10 ~8 ~10 gray_concrete replace light_blue_concrete
execute if score district_color value matches 8 run fill ~ ~ ~ ~10 ~8 ~10 light_gray_concrete replace light_blue_concrete
execute if score district_color value matches 9 run fill ~ ~ ~ ~10 ~8 ~10 cyan_concrete replace light_blue_concrete
execute if score district_color value matches 10 run fill ~ ~ ~ ~10 ~8 ~10 purple_concrete replace light_blue_concrete
execute if score district_color value matches 11 run fill ~ ~ ~ ~10 ~8 ~10 blue_concrete replace light_blue_concrete
execute if score district_color value matches 12 run fill ~ ~ ~ ~10 ~8 ~10 brown_concrete replace light_blue_concrete
execute if score district_color value matches 13 run fill ~ ~ ~ ~10 ~8 ~10 green_concrete replace light_blue_concrete
execute if score district_color value matches 14 run fill ~ ~ ~ ~10 ~8 ~10 red_concrete replace light_blue_concrete
execute if score district_color value matches 15 run fill ~ ~ ~ ~10 ~8 ~10 black_concrete replace light_blue_concrete

#Remove any walls between this room and the one it generated from
function tid:dungeon/sin/remove_walls

#Count the room in the total
scoreboard players remove sin_rooms value 1

#We're done here
kill @s

