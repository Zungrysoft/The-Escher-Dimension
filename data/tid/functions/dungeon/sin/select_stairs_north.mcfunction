#Determine district
execute positioned ~2 ~ ~5 run function tid:dungeon/sin/get_nearest_district

#Universal Structures
setblock ~2 ~ ~5 minecraft:structure_block{name: "tid:sin/stairs_north_1", posX: -2, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Exclusive Structures
#Blue
execute if score district_color value matches 11 run setblock ~2 ~ ~5 minecraft:structure_block{name: "tid:sin/stairs_north_2", posX: -2, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Red
execute if score district_color value matches 14 run setblock ~2 ~ ~5 minecraft:structure_block{name: "tid:sin/stairs_north_3", posX: -2, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Cyan
execute if score district_color value matches 9 run setblock ~2 ~ ~5 minecraft:structure_block{name: "tid:sin/stairs_north_3", posX: -2, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Lime
execute if score district_color value matches 5 run setblock ~2 ~ ~5 minecraft:structure_block{name: "tid:sin/stairs_north_3", posX: -2, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 5 if predicate tid:random_80 run setblock ~2 ~ ~5 minecraft:structure_block{name: "tid:sin/stairs_north_4", posX: -2, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Yellow
execute if score district_color value matches 4 run setblock ~2 ~ ~5 minecraft:structure_block{name: "tid:sin/stairs_north_4", posX: -2, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Green
execute if score district_color value matches 13 run setblock ~2 ~ ~5 minecraft:structure_block{name: "tid:sin/stairs_north_4", posX: -2, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Black
execute if score district_color value matches 15 run setblock ~2 ~ ~5 minecraft:structure_block{name: "tid:sin/stairs_north_4", posX: -2, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Brown
execute if score district_color value matches 12 run setblock ~2 ~ ~5 minecraft:structure_block{name: "tid:sin/stairs_north_5", posX: -2, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Light Blue
execute if score district_color value matches 3 run setblock ~2 ~ ~5 minecraft:structure_block{name: "tid:sin/stairs_north_5", posX: -2, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Magenta
execute if score district_color value matches 2 run setblock ~2 ~ ~5 minecraft:structure_block{name: "tid:sin/stairs_north_6", posX: -2, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Pink
execute if score district_color value matches 6 run setblock ~2 ~ ~5 minecraft:structure_block{name: "tid:sin/stairs_north_7", posX: -2, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~2 ~1 ~5 minecraft:redstone_block

#Mark this area as generated
fill ~ ~-126 ~1 ~3 ~-118 ~9 air

#Add support pillar
execute positioned ~ ~-1 ~2 run clone ~ 41 ~ ~4 ~-128 ~2 ~ 169 ~ masked
execute positioned ~ ~-1 ~2 run fill ~ 168 ~ ~4 ~ ~2 polished_blackstone_bricks replace orange_wool

#Recolor the concrete blocks in the room
execute if score district_color value matches 0 run fill ~ ~ ~ ~4 ~10 ~9 white_concrete replace light_blue_concrete
execute if score district_color value matches 1 run fill ~ ~ ~ ~4 ~10 ~9 orange_concrete replace light_blue_concrete
execute if score district_color value matches 2 run fill ~ ~ ~ ~4 ~10 ~9 magenta_concrete replace light_blue_concrete
execute if score district_color value matches 4 run fill ~ ~ ~ ~4 ~10 ~9 yellow_concrete replace light_blue_concrete
execute if score district_color value matches 5 run fill ~ ~ ~ ~4 ~10 ~9 lime_concrete replace light_blue_concrete
execute if score district_color value matches 6 run fill ~ ~ ~ ~4 ~10 ~9 pink_concrete replace light_blue_concrete
execute if score district_color value matches 7 run fill ~ ~ ~ ~4 ~10 ~9 gray_concrete replace light_blue_concrete
execute if score district_color value matches 8 run fill ~ ~ ~ ~4 ~10 ~9 light_gray_concrete replace light_blue_concrete
execute if score district_color value matches 9 run fill ~ ~ ~ ~4 ~10 ~9 cyan_concrete replace light_blue_concrete
execute if score district_color value matches 10 run fill ~ ~ ~ ~4 ~10 ~9 purple_concrete replace light_blue_concrete
execute if score district_color value matches 11 run fill ~ ~ ~ ~4 ~10 ~9 blue_concrete replace light_blue_concrete
execute if score district_color value matches 12 run fill ~ ~ ~ ~4 ~10 ~9 brown_concrete replace light_blue_concrete
execute if score district_color value matches 13 run fill ~ ~ ~ ~4 ~10 ~9 green_concrete replace light_blue_concrete
execute if score district_color value matches 14 run fill ~ ~ ~ ~4 ~10 ~9 red_concrete replace light_blue_concrete
execute if score district_color value matches 15 run fill ~ ~ ~ ~4 ~10 ~9 black_concrete replace light_blue_concrete

#Recolor the stained glass in the room
execute if score district_color value matches 4 run fill ~ ~ ~ ~4 ~10 ~9 yellow_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 5 run fill ~ ~ ~ ~4 ~10 ~9 lime_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 13 run fill ~ ~ ~ ~4 ~10 ~9 green_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 15 run fill ~ ~ ~ ~4 ~10 ~9 black_stained_glass replace light_blue_stained_glass

#Recolor grass in the room
execute if score district_color value matches 5 run fill ~ ~ ~ ~4 ~10 ~9 grass_block replace crimson_nylium
execute if score district_color value matches 5 run fill ~ ~ ~ ~4 ~10 ~9 dirt replace netherrack
execute if score district_color value matches 9 run fill ~ ~ ~ ~4 ~10 ~9 warped_nylium replace crimson_nylium

#Summon doorways
summon minecraft:area_effect_cloud ~2 ~7 ~ {Duration:99999999,CustomName:"\"sin_north\""}
summon minecraft:area_effect_cloud ~2 ~3 ~9 {Duration:99999999,CustomName:"\"sin_south\""}

#Remove any walls between this room and the one it generated from
function tid:dungeon/sin/remove_walls

#Count the room in the total
scoreboard players remove sin_rooms value 1

#We're done here
kill @s
