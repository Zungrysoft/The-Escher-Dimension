#Determine district
execute positioned ~6 ~ ~2 run function tid:dungeon/sin/get_nearest_district

#Universal Structures
setblock ~6 ~ ~2 minecraft:structure_block{name: "tid:sin/bridge_west_1", posX: -6, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Exclusive Structures
#Blue
execute if score district_color value matches 11 run setblock ~6 ~ ~2 minecraft:structure_block{name: "tid:sin/bridge_west_2", posX: -6, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Red
execute if score district_color value matches 14 run setblock ~6 ~ ~2 minecraft:structure_block{name: "tid:sin/bridge_west_2", posX: -6, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Pink
execute if score district_color value matches 6 run setblock ~6 ~ ~2 minecraft:structure_block{name: "tid:sin/bridge_west_3", posX: -6, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Purple
execute if score district_color value matches 10 if predicate tid:random_33 run setblock ~6 ~ ~2 minecraft:structure_block{name: "tid:sin/bridge_west_4", posX: -6, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Yellow
execute if score district_color value matches 4 run setblock ~6 ~ ~2 minecraft:structure_block{name: "tid:sin/bridge_west_5", posX: -6, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Lime
execute if score district_color value matches 5 if predicate tid:random_80 run setblock ~6 ~ ~2 minecraft:structure_block{name: "tid:sin/bridge_west_5", posX: -6, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Magenta
execute if score district_color value matches 2 run setblock ~6 ~ ~2 minecraft:structure_block{name: "tid:sin/bridge_west_6", posX: -6, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Green
execute if score district_color value matches 13 run setblock ~6 ~ ~2 minecraft:structure_block{name: "tid:sin/bridge_west_6", posX: -6, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Gray
execute if score district_color value matches 7 run setblock ~6 ~ ~2 minecraft:structure_block{name: "tid:sin/bridge_west_7", posX: -6, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Cyan
execute if score district_color value matches 9 run setblock ~6 ~ ~2 minecraft:structure_block{name: "tid:sin/bridge_west_7", posX: -6, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~6 ~1 ~2 minecraft:redstone_block

#Mark this area as generated
fill ~ ~-126 ~1 ~12 ~-122 ~3 air

#Add support pillar
execute positioned ~5 ~-1 ~ run clone ~ 41 ~ ~2 ~-128 ~4 ~ 169 ~ masked
execute positioned ~5 ~-1 ~ run fill ~ 168 ~ ~2 ~ ~4 polished_blackstone_bricks replace orange_wool

#Recolor the concrete blocks in the room
execute if score district_color value matches 0 run fill ~ ~ ~ ~12 ~6 ~4 white_concrete replace light_blue_concrete
execute if score district_color value matches 1 run fill ~ ~ ~ ~12 ~6 ~4 orange_concrete replace light_blue_concrete
execute if score district_color value matches 2 run fill ~ ~ ~ ~12 ~6 ~4 magenta_concrete replace light_blue_concrete
execute if score district_color value matches 4 run fill ~ ~ ~ ~12 ~6 ~4 yellow_concrete replace light_blue_concrete
execute if score district_color value matches 5 run fill ~ ~ ~ ~12 ~6 ~4 lime_concrete replace light_blue_concrete
execute if score district_color value matches 6 run fill ~ ~ ~ ~12 ~6 ~4 pink_concrete replace light_blue_concrete
execute if score district_color value matches 7 run fill ~ ~ ~ ~12 ~6 ~4 gray_concrete replace light_blue_concrete
execute if score district_color value matches 8 run fill ~ ~ ~ ~12 ~6 ~4 light_gray_concrete replace light_blue_concrete
execute if score district_color value matches 9 run fill ~ ~ ~ ~12 ~6 ~4 cyan_concrete replace light_blue_concrete
execute if score district_color value matches 10 run fill ~ ~ ~ ~12 ~6 ~4 purple_concrete replace light_blue_concrete
execute if score district_color value matches 11 run fill ~ ~ ~ ~12 ~6 ~4 blue_concrete replace light_blue_concrete
execute if score district_color value matches 12 run fill ~ ~ ~ ~12 ~6 ~4 brown_concrete replace light_blue_concrete
execute if score district_color value matches 13 run fill ~ ~ ~ ~12 ~6 ~4 green_concrete replace light_blue_concrete
execute if score district_color value matches 14 run fill ~ ~ ~ ~12 ~6 ~4 red_concrete replace light_blue_concrete
execute if score district_color value matches 15 run fill ~ ~ ~ ~12 ~6 ~4 black_concrete replace light_blue_concrete

#Recolor the stained glass in the room
execute if score district_color value matches 4 run fill ~ ~ ~ ~12 ~6 ~4 yellow_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 5 run fill ~ ~ ~ ~12 ~6 ~4 lime_stained_glass replace light_blue_stained_glass

#Remove any walls between this room and the one it generated from
function tid:dungeon/sin/remove_walls

#Count the room in the total
scoreboard players remove sin_rooms value 1

#We're done here
kill @s

