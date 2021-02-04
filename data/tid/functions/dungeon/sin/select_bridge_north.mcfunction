#Determine district
execute positioned ~2 ~ ~6 run function tid:dungeon/sin/get_nearest_district

#Universal Structures
setblock ~2 ~ ~6 minecraft:structure_block{name: "tid:sin/bridge_north_1", posX: -2, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Exclusive Structures
#Blue
execute if score district_color value matches 11 run setblock ~2 ~ ~6 minecraft:structure_block{name: "tid:sin/bridge_north_2", posX: -2, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Pink
execute if score district_color value matches 6 run setblock ~2 ~ ~6 minecraft:structure_block{name: "tid:sin/bridge_north_3", posX: -2, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Purple
execute if score district_color value matches 10 if predicate tid:random_33 run setblock ~2 ~ ~6 minecraft:structure_block{name: "tid:sin/bridge_north_4", posX: -2, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Yellow
execute if score district_color value matches 4 run setblock ~2 ~ ~6 minecraft:structure_block{name: "tid:sin/bridge_north_5", posX: -2, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Lime
execute if score district_color value matches 5 if predicate tid:random_80 run setblock ~2 ~ ~6 minecraft:structure_block{name: "tid:sin/bridge_north_5", posX: -2, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Magenta
execute if score district_color value matches 2 run setblock ~2 ~ ~6 minecraft:structure_block{name: "tid:sin/bridge_north_6", posX: -2, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Green
execute if score district_color value matches 13 run setblock ~2 ~ ~6 minecraft:structure_block{name: "tid:sin/bridge_north_5", posX: -2, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Gray
execute if score district_color value matches 7 run setblock ~2 ~ ~6 minecraft:structure_block{name: "tid:sin/bridge_north_7", posX: -2, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Cyan
execute if score district_color value matches 9 run setblock ~2 ~ ~6 minecraft:structure_block{name: "tid:sin/bridge_north_7", posX: -2, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~2 ~1 ~6 minecraft:redstone_block

#Mark this area as generated
fill ~1 ~-126 ~ ~3 ~-122 ~12 air

#Add support pillar
execute positioned ~ ~-1 ~5 run clone ~ 41 ~ ~4 ~-128 ~2 ~ 169 ~ masked
execute positioned ~ ~-1 ~5 run fill ~ 168 ~ ~4 ~ ~2 polished_blackstone_bricks replace orange_wool

#Recolor the concrete blocks in the room
execute if score district_color value matches 0 run fill ~ ~ ~ ~4 ~6 ~12 white_concrete replace light_blue_concrete
execute if score district_color value matches 1 run fill ~ ~ ~ ~4 ~6 ~12 orange_concrete replace light_blue_concrete
execute if score district_color value matches 2 run fill ~ ~ ~ ~4 ~6 ~12 magenta_concrete replace light_blue_concrete
execute if score district_color value matches 4 run fill ~ ~ ~ ~4 ~6 ~12 yellow_concrete replace light_blue_concrete
execute if score district_color value matches 5 run fill ~ ~ ~ ~4 ~6 ~12 lime_concrete replace light_blue_concrete
execute if score district_color value matches 6 run fill ~ ~ ~ ~4 ~6 ~12 pink_concrete replace light_blue_concrete
execute if score district_color value matches 7 run fill ~ ~ ~ ~4 ~6 ~12 gray_concrete replace light_blue_concrete
execute if score district_color value matches 8 run fill ~ ~ ~ ~4 ~6 ~12 light_gray_concrete replace light_blue_concrete
execute if score district_color value matches 9 run fill ~ ~ ~ ~4 ~6 ~12 cyan_concrete replace light_blue_concrete
execute if score district_color value matches 10 run fill ~ ~ ~ ~4 ~6 ~12 purple_concrete replace light_blue_concrete
execute if score district_color value matches 11 run fill ~ ~ ~ ~4 ~6 ~12 blue_concrete replace light_blue_concrete
execute if score district_color value matches 12 run fill ~ ~ ~ ~4 ~6 ~12 brown_concrete replace light_blue_concrete
execute if score district_color value matches 13 run fill ~ ~ ~ ~4 ~6 ~12 green_concrete replace light_blue_concrete
execute if score district_color value matches 14 run fill ~ ~ ~ ~4 ~6 ~12 red_concrete replace light_blue_concrete
execute if score district_color value matches 15 run fill ~ ~ ~ ~4 ~6 ~12 black_concrete replace light_blue_concrete

#Recolor the stained glass in the room
execute if score district_color value matches 4 run fill ~ ~ ~ ~4 ~6 ~12 yellow_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 5 run fill ~ ~ ~ ~4 ~6 ~12 lime_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 13 run fill ~ ~ ~ ~4 ~6 ~12 green_stained_glass replace light_blue_stained_glass

#Remove any walls between this room and the one it generated from
function tid:dungeon/sin/remove_walls

#Count the room in the total
scoreboard players remove sin_rooms value 1

#We're done here
kill @s

